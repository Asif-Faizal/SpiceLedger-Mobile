import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/merchant_dashboard_entity.dart';
import '../bloc/merchant_dashboard/merchant_dashboard_bloc.dart';
import '../bloc/merchant_dashboard/merchant_dashboard_event.dart';
import '../bloc/merchant_dashboard/merchant_dashboard_state.dart';
import '../bloc/positions/merchant_positions_bloc.dart';
import '../bloc/positions/merchant_positions_event.dart';
import '../bloc/positions/merchant_positions_state.dart';
import '../widgets/merchant_market_widgets.dart';
import 'merchant_trends_page.dart';

class MerchantDashboardPage extends StatelessWidget {
  const MerchantDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<MerchantDashboardBloc>()
            ..add(const MerchantDashboardEvent.fetchDashboard()),
        ),
        BlocProvider(
          create: (_) => getIt<MerchantPositionsBloc>()
            ..add(const MerchantPositionsEvent.fetchPositions()),
        ),
      ],
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
          error: (e) => Center(child: Text('Error: ${e.message}')),
          loaded: (s) => RefreshIndicator(
            onRefresh: () async {
              context.read<MerchantDashboardBloc>().add(
                    const MerchantDashboardEvent.fetchDashboard(),
                  );
              context.read<MerchantPositionsBloc>().add(
                    const MerchantPositionsEvent.fetchPositions(),
                  );
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _SectionTitle('Portfolio'),
                  const SizedBox(height: 12),
                  _SummaryGrid(summary: s.dashboard.summary),
                  const SizedBox(height: 16),
                  _TrendsLink(
                    days: s.days,
                    pnlTrend: s.dashboard.pnlTrend,
                    activityTrend: s.dashboard.activityTrend,
                  ),
                  if (s.dashboard.insights.isNotEmpty) ...[
                    const SizedBox(height: 20),
                    const _SectionTitle('Insights'),
                    const SizedBox(height: 12),
                    ...s.dashboard.insights.map(
                      (insight) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: _InsightCard(insight: insight),
                      ),
                    ),
                  ],
                  const SizedBox(height: 20),
                  const _SectionTitle('Open Positions'),
                  const SizedBox(height: 12),
                  _PositionsSection(
                    gradeLabels: _gradeLabelsFromDashboard(s.dashboard),
                  ),
                  const SizedBox(height: 20),
                  const _SectionTitle('Portfolio Mix'),
                  const SizedBox(height: 12),
                  if (s.dashboard.portfolioMix.isEmpty)
                    const _EmptyState('No portfolio data')
                  else
                    ...s.dashboard.portfolioMix.map(
                      (item) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: _PortfolioMixCard(item: item),
                      ),
                    ),
                  const SizedBox(height: 20),
                  const _SectionTitle('Price Movers'),
                  const SizedBox(height: 12),
                  if (s.dashboard.movers.isEmpty)
                    const _EmptyState('No price data')
                  else
                    ...s.dashboard.movers.map(
                      (mover) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: _MoverCard(mover: mover),
                      ),
                    ),
                  const SizedBox(height: 20),
                  const _SectionTitle('Recent Transactions'),
                  const SizedBox(height: 12),
                  if (s.recentTransactions.isEmpty)
                    const _EmptyState('No recent activity')
                  else
                    ...s.recentTransactions.take(5).map(
                      (txn) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
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

class _TrendsLink extends StatelessWidget {
  final int days;
  final List<PnlTrendPointEntity> pnlTrend;
  final List<ActivityTrendPointEntity> activityTrend;

  const _TrendsLink({
    required this.days,
    required this.pnlTrend,
    required this.activityTrend,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => MerchantTrendsPage(
              days: days,
              pnlTrend: pnlTrend,
              activityTrend: activityTrend,
            ),
          ),
        );
      },
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.outline),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Row(
          children: [
            Icon(Icons.show_chart, color: AppColors.blueAccent, size: 22),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'P&L & Activity Trends',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'View daily realized P&L and buy/sell activity',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.neutralGray,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right, color: AppColors.neutralGray),
          ],
        ),
      ),
    );
  }
}

class _PositionsSection extends StatelessWidget {
  final Map<String, String> gradeLabels;

  const _PositionsSection({required this.gradeLabels});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MerchantPositionsBloc, MerchantPositionsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Text('Error: $message'),
          loaded: (positions) {
            if (positions.isEmpty) {
              return const _EmptyState('No open positions');
            }
            return Column(
              children: positions.map((position) {
                final label = gradeLabels[position.spiceGradeId];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: MerchantPositionCard(
                    position: position,
                    label: label,
                    onTap: () => openGradePositionDetail(
                      context,
                      position.spiceGradeId,
                      label: label,
                    ),
                  ),
                );
              }).toList(),
            );
          },
        );
      },
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}

class _EmptyState extends StatelessWidget {
  final String message;

  const _EmptyState(this.message);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Text(message),
      ),
    );
  }
}

class _SummaryGrid extends StatelessWidget {
  final MerchantDashboardSummaryEntity summary;

  const _SummaryGrid({required this.summary});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 1.7,
      children: [
        _StatCard(
          label: 'Portfolio Value',
          value: '₹${summary.portfolioValue.toStringAsFixed(0)}',
          icon: Icons.account_balance_wallet_outlined,
          color: Colors.blue,
        ),
        _StatCard(
          label: 'Net P&L',
          value: '₹${summary.netPnL.toStringAsFixed(0)}',
          icon: Icons.trending_up,
          color: summary.netPnL >= 0 ? Colors.green : Colors.red,
        ),
        _StatCard(
          label: 'Open Positions',
          value: summary.openPositions.toString(),
          icon: Icons.inventory_2_outlined,
          color: Colors.orange,
        ),
        _StatCard(
          label: 'Quantity',
          value: '${summary.totalQuantityKg.toStringAsFixed(1)} kg',
          icon: Icons.scale,
          color: Colors.purple,
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;

  const _StatCard({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        border: Border.all(color: color.withValues(alpha: 0.2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: color, size: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: AppColors.nearBlack,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 11,
                  color: AppColors.neutralGray,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InsightCard extends StatelessWidget {
  final MerchantInsightEntity insight;

  const _InsightCard({required this.insight});

  Color get _severityColor {
    switch (insight.severity.toLowerCase()) {
      case 'warning':
        return Colors.orange;
      case 'error':
        return Colors.red;
      default:
        return AppColors.blueAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: _severityColor.withValues(alpha: 0.05),
        border: Border.all(color: _severityColor.withValues(alpha: 0.2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            insight.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            insight.body,
            style: const TextStyle(
              fontSize: 13,
              color: AppColors.neutralGray,
            ),
          ),
        ],
      ),
    );
  }
}

class _PortfolioMixCard extends StatelessWidget {
  final PortfolioMixItemEntity item;

  const _PortfolioMixCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.outline),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              item.label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text('${item.quantity.toStringAsFixed(1)} kg'),
          const SizedBox(width: 12),
          Text(
            '₹${item.value.toStringAsFixed(0)}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.neutralGray,
            ),
          ),
        ],
      ),
    );
  }
}

class _MoverCard extends StatelessWidget {
  final MerchantMoverEntity mover;

  const _MoverCard({required this.mover});

  Color get _directionColor {
    switch (mover.direction) {
      case 'UP':
        return Colors.green;
      case 'DOWN':
        return Colors.red;
      default:
        return AppColors.neutralGray;
    }
  }

  IconData get _directionIcon {
    switch (mover.direction) {
      case 'UP':
        return Icons.arrow_upward;
      case 'DOWN':
        return Icons.arrow_downward;
      default:
        return Icons.remove;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.outline),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Icon(_directionIcon, color: _directionColor, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${mover.productName} — ${mover.gradeName}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '₹${mover.todayPrice.toStringAsFixed(0)} (was ₹${mover.previousPrice.toStringAsFixed(0)})',
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.neutralGray,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '${mover.changePercent.toStringAsFixed(1)}%',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: _directionColor,
            ),
          ),
        ],
      ),
    );
  }
}
