import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/merchant_dashboard_entity.dart';
import '../bloc/merchant_dashboard/merchant_dashboard_bloc.dart';
import '../bloc/merchant_dashboard/merchant_dashboard_event.dart';
import '../bloc/merchant_dashboard/merchant_dashboard_state.dart';
import '../widgets/merchant_market_widgets.dart';
import 'merchant_trends_page.dart';

class MerchantDashboardPage extends StatelessWidget {
  const MerchantDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MerchantDashboardBloc>()
        ..add(const MerchantDashboardEvent.fetchDashboard()),
      child: const _MerchantDashboardView(),
    );
  }
}

class _MerchantDashboardView extends StatelessWidget {
  const _MerchantDashboardView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MerchantDashboardBloc, MerchantDashboardState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          loading: (_) => const Center(child: CircularProgressIndicator()),
          error: (e) => Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                e.message,
                textAlign: TextAlign.center,
                style: const TextStyle(color: AppColors.neutralGray),
              ),
            ),
          ),
          loaded: (s) => RefreshIndicator(
            onRefresh: () async {
              context.read<MerchantDashboardBloc>().add(
                    const MerchantDashboardEvent.fetchDashboard(),
                  );
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _PortfolioHeader(summary: s.dashboard.summary),
                  const SizedBox(height: 10),
                  _NetPnLCard(summary: s.dashboard.summary),
                  const SizedBox(height: 12),
                  _TrendsLink(days: s.days),
                  if (s.dashboard.insights.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    ...s.dashboard.insights.take(2).map(
                          (insight) => Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: _InsightChip(insight: insight),
                          ),
                        ),
                  ],
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Text(
                        'Holdings',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${s.dashboard.summary.openPositions} positions',
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.neutralGray,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  _HoldingsList(
                    holdings: s.dashboard.holdings,
                    movers: s.dashboard.movers,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Recent',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  if (s.recentTransactions.isEmpty)
                    const _EmptyState('No recent activity')
                  else
                    ...s.recentTransactions.take(3).map(
                          (txn) => Padding(
                            padding: const EdgeInsets.only(bottom: 6),
                            child: MerchantTransactionCard(
                              txn: txn,
                              gradeLabel: _gradeLabelsFromDashboard(
                                s.dashboard,
                              )[txn.spiceGradeId],
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Map<String, String> _gradeLabelsFromDashboard(MerchantDashboardEntity dashboard) {
  return {
    for (final h in dashboard.holdings)
      h.spiceGradeId: '${h.productName} — ${h.gradeName}',
  };
}

class _PortfolioHeader extends StatelessWidget {
  final MerchantDashboardSummaryEntity summary;

  const _PortfolioHeader({required this.summary});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.blueAccent.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.blueAccent.withValues(alpha: 0.15),
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.account_balance_wallet_outlined,
            color: AppColors.blueAccent,
            size: 20,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '₹${summary.portfolioValue.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.nearBlack,
                  ),
                ),
                Text(
                  '${summary.totalQuantityKg.toStringAsFixed(1)} kg · ${summary.openPositions} open',
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.neutralGray,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NetPnLCard extends StatelessWidget {
  final MerchantDashboardSummaryEntity summary;

  const _NetPnLCard({required this.summary});

  Color get _netColor =>
      summary.netPnL >= 0 ? AppColors.success : AppColors.danger;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: _netColor.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: _netColor.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.show_chart, color: _netColor, size: 18),
              const SizedBox(width: 8),
              const Text(
                'Net P&L',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.neutralGray,
                ),
              ),
              const Spacer(),
              Text(
                '₹${summary.netPnL.toStringAsFixed(0)}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: _netColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: _PnLBreakdownItem(
                  label: 'Realized',
                  value: summary.totalRealizedPnL,
                  color: AppColors.neutralGray,
                ),
              ),
              Container(
                width: 1,
                height: 28,
                color: AppColors.outline,
              ),
              Expanded(
                child: _PnLBreakdownItem(
                  label: 'Unrealized',
                  value: summary.totalUnrealizedPnL,
                  color: summary.totalUnrealizedPnL >= 0
                      ? AppColors.success
                      : AppColors.danger,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PnLBreakdownItem extends StatelessWidget {
  final String label;
  final double value;
  final Color color;

  const _PnLBreakdownItem({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 11, color: AppColors.neutralGray),
        ),
        const SizedBox(height: 2),
        Text(
          '₹${value.toStringAsFixed(0)}',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }
}

class _TrendsLink extends StatelessWidget {
  final int days;

  const _TrendsLink({required this.days});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.lightGray,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => MerchantTrendsPage(days: days),
            ),
          );
        },
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.bar_chart_rounded,
                  color: AppColors.blueAccent,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Performance trends',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Charts · daily P&L · buy/sell by product',
                      style: TextStyle(
                        fontSize: 11,
                        color: AppColors.neutralGray,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: AppColors.neutralGray),
            ],
          ),
        ),
      ),
    );
  }
}

class _HoldingsList extends StatelessWidget {
  final List<MerchantHoldingEntity> holdings;
  final List<MerchantMoverEntity> movers;

  const _HoldingsList({
    required this.holdings,
    required this.movers,
  });

  @override
  Widget build(BuildContext context) {
    if (holdings.isEmpty) {
      return const _EmptyState('No open positions');
    }

    final moverByGrade = {for (final m in movers) m.spiceGradeId: m};

    return Column(
      children: holdings.map((holding) {
        final mover = moverByGrade[holding.spiceGradeId];
        return Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: _CombinedHoldingCard(
            holding: holding,
            mover: mover,
            onTap: () => openGradePositionDetail(
              context,
              holding.spiceGradeId,
              label: '${holding.productName} — ${holding.gradeName}',
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _CombinedHoldingCard extends StatelessWidget {
  final MerchantHoldingEntity holding;
  final MerchantMoverEntity? mover;
  final VoidCallback onTap;

  const _CombinedHoldingCard({
    required this.holding,
    required this.mover,
    required this.onTap,
  });

  Color _directionColor(String? direction) {
    switch (direction) {
      case 'UP':
        return AppColors.success;
      case 'DOWN':
        return AppColors.danger;
      default:
        return AppColors.neutralGray;
    }
  }

  @override
  Widget build(BuildContext context) {
    final priceColor = _directionColor(mover?.direction);
    final unrealizedColor = holding.unrealizedPnL >= 0
        ? AppColors.success
        : AppColors.danger;

    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.outline),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '${holding.productName} · ${holding.gradeName}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    '₹${holding.marketValue.toStringAsFixed(0)}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(
                    Icons.chevron_right,
                    size: 16,
                    color: AppColors.neutralGray,
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Text(
                    '${holding.quantity.toStringAsFixed(1)} kg',
                    style: const TextStyle(
                      fontSize: 11,
                      color: AppColors.neutralGray,
                    ),
                  ),
                  const Text(
                    ' · ',
                    style: TextStyle(color: AppColors.neutralGray),
                  ),
                  Text(
                    '₹${holding.todayPrice.toStringAsFixed(0)}/kg',
                    style: const TextStyle(
                      fontSize: 11,
                      color: AppColors.neutralGray,
                    ),
                  ),
                  if (mover != null && mover!.changePercent.abs() > 0.01) ...[
                    const SizedBox(width: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: priceColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        '${mover!.changePercent >= 0 ? '+' : ''}${mover!.changePercent.toStringAsFixed(1)}%',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: priceColor,
                        ),
                      ),
                    ),
                  ],
                  const Spacer(),
                  Text(
                    'U ₹${holding.unrealizedPnL.toStringAsFixed(0)}',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: unrealizedColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InsightChip extends StatelessWidget {
  final MerchantInsightEntity insight;

  const _InsightChip({required this.insight});

  Color get _color {
    switch (insight.severity.toLowerCase()) {
      case 'warning':
        return Colors.orange;
      case 'error':
        return AppColors.danger;
      case 'success':
        return AppColors.success;
      default:
        return AppColors.blueAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: _color.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: _color.withValues(alpha: 0.2)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.lightbulb_outline, size: 16, color: _color),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  insight.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
                Text(
                  insight.body,
                  style: const TextStyle(
                    fontSize: 11,
                    color: AppColors.neutralGray,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  final String message;

  const _EmptyState(this.message);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Center(
        child: Text(
          message,
          style: const TextStyle(color: AppColors.neutralGray, fontSize: 13),
        ),
      ),
    );
  }
}
