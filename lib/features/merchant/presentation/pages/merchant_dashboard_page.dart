import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/merchant_dashboard_entity.dart';
import '../bloc/merchant_dashboard/merchant_dashboard_bloc.dart';
import '../bloc/merchant_dashboard/merchant_dashboard_event.dart';
import '../bloc/merchant_dashboard/merchant_dashboard_state.dart';

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
          error: (e) => Center(child: Text('Error: ${e.message}')),
          loaded: (s) => RefreshIndicator(
            onRefresh: () async {
              context.read<MerchantDashboardBloc>().add(
                    const MerchantDashboardEvent.fetchDashboard(),
                  );
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _SectionTitle('Portfolio Summary'),
                  const SizedBox(height: 16),
                  _SummaryGrid(summary: s.dashboard.summary),
                  const SizedBox(height: 24),
                  if (s.dashboard.insights.isNotEmpty) ...[
                    _SectionTitle('Insights'),
                    const SizedBox(height: 16),
                    ...s.dashboard.insights.map(
                      (insight) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: _InsightCard(insight: insight),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                  _SectionTitle('Holdings'),
                  const SizedBox(height: 16),
                  if (s.dashboard.holdings.isEmpty)
                    const _EmptyState('No open positions')
                  else
                    ...s.dashboard.holdings.map(
                      (holding) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: _HoldingCard(holding: holding),
                      ),
                    ),
                  const SizedBox(height: 24),
                  _SectionTitle('Portfolio Mix'),
                  const SizedBox(height: 16),
                  if (s.dashboard.portfolioMix.isEmpty)
                    const _EmptyState('No portfolio data')
                  else
                    ...s.dashboard.portfolioMix.map(
                      (item) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: _PortfolioMixCard(item: item),
                      ),
                    ),
                  const SizedBox(height: 24),
                  _SectionTitle('Price Movers'),
                  const SizedBox(height: 16),
                  if (s.dashboard.movers.isEmpty)
                    const _EmptyState('No price data')
                  else
                    ...s.dashboard.movers.map(
                      (mover) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: _MoverCard(mover: mover),
                      ),
                    ),
                  const SizedBox(height: 24),
                  _SectionTitle('Recent Transactions'),
                  const SizedBox(height: 16),
                  if (s.dashboard.recentTransactions.isEmpty)
                    const _EmptyState('No recent activity')
                  else
                    ...s.dashboard.recentTransactions.map(
                      (txn) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: _TransactionCard(txn: txn),
                      ),
                    ),
                  const SizedBox(height: 24),
                  _SectionTitle('P&L Trend (${s.days}d)'),
                  const SizedBox(height: 16),
                  if (s.dashboard.pnlTrend.isEmpty)
                    const _EmptyState('No P&L data')
                  else
                    ...s.dashboard.pnlTrend.map(
                      (point) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: _TrendRow(
                          label: point.date,
                          primary:
                              'Daily: ₹${point.dailyRealizedPnL.toStringAsFixed(0)}',
                          secondary:
                              'Cumulative: ₹${point.cumulativeRealizedPnL.toStringAsFixed(0)}',
                        ),
                      ),
                    ),
                  const SizedBox(height: 24),
                  _SectionTitle('Activity Trend (${s.days}d)'),
                  const SizedBox(height: 16),
                  if (s.dashboard.activityTrend.isEmpty)
                    const _EmptyState('No activity data')
                  else
                    ...s.dashboard.activityTrend.map(
                      (point) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: _TrendRow(
                          label: point.date,
                          primary:
                              'Buy ${point.buyQuantity.toStringAsFixed(0)} kg (${point.buyCount})',
                          secondary:
                              'Sell ${point.sellQuantity.toStringAsFixed(0)} kg (${point.sellCount})',
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
        padding: const EdgeInsets.symmetric(vertical: 20),
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
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.5,
      children: [
        _StatCard(
          label: 'Portfolio Value',
          value: '₹${summary.portfolioValue.toStringAsFixed(0)}',
          icon: Icons.account_balance_wallet_outlined,
          color: Colors.blue,
        ),
        _StatCard(
          label: 'Open Positions',
          value: summary.openPositions.toString(),
          icon: Icons.inventory_2_outlined,
          color: Colors.orange,
        ),
        _StatCard(
          label: 'Net P&L',
          value: '₹${summary.netPnL.toStringAsFixed(0)}',
          icon: Icons.trending_up,
          color: summary.netPnL >= 0 ? Colors.green : Colors.red,
        ),
        _StatCard(
          label: 'Total Quantity',
          value: '${summary.totalQuantityKg.toStringAsFixed(1)} kg',
          icon: Icons.scale,
          color: Colors.purple,
        ),
        _StatCard(
          label: 'Realized P&L',
          value: '₹${summary.totalRealizedPnL.toStringAsFixed(0)}',
          icon: Icons.payments_outlined,
          color: Colors.teal,
        ),
        _StatCard(
          label: 'Unrealized P&L',
          value: '₹${summary.totalUnrealizedPnL.toStringAsFixed(0)}',
          icon: Icons.show_chart,
          color: Colors.indigo,
        ),
        _StatCard(
          label: 'Trades (${summary.tradesInPeriod})',
          value:
              'B ${summary.buyVolumeInPeriod.toStringAsFixed(0)} / S ${summary.sellVolumeInPeriod.toStringAsFixed(0)} kg',
          icon: Icons.swap_horiz,
          color: Colors.green,
        ),
        _StatCard(
          label: 'Total Cost',
          value: '₹${summary.totalCost.toStringAsFixed(0)}',
          icon: Icons.receipt_long_outlined,
          color: AppColors.neutralGray,
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
        color: color.withOpacity(0.05),
        border: Border.all(color: color.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: color, size: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.nearBlack,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 11,
                  color: AppColors.neutralGray,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
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
        color: _severityColor.withOpacity(0.05),
        border: Border.all(color: _severityColor.withOpacity(0.2)),
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

class _HoldingCard extends StatelessWidget {
  final MerchantHoldingEntity holding;

  const _HoldingCard({required this.holding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.outline),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  '${holding.productName} — ${holding.gradeName}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '${holding.weightPercent}%',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.blueAccent,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${holding.quantity.toStringAsFixed(1)} kg'),
              Text('₹${holding.marketValue.toStringAsFixed(0)}'),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            'Unrealized: ₹${holding.unrealizedPnL.toStringAsFixed(0)} (${holding.unrealizedPnLPercent.toStringAsFixed(1)}%)',
            style: TextStyle(
              fontSize: 12,
              color: holding.unrealizedPnL >= 0 ? Colors.green : Colors.red,
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

class _TransactionCard extends StatelessWidget {
  final MerchantTransactionEntity txn;

  const _TransactionCard({required this.txn});

  @override
  Widget build(BuildContext context) {
    final isBuy = txn.type == 'BUY';
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.outline),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Icon(
            isBuy ? Icons.add_circle_outline : Icons.remove_circle_outline,
            color: isBuy ? Colors.green : Colors.red,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${txn.type} ${txn.quantity.toStringAsFixed(1)} kg',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  txn.tradeDate,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.neutralGray,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '₹${txn.price.toStringAsFixed(0)}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _TrendRow extends StatelessWidget {
  final String label;
  final String primary;
  final String secondary;

  const _TrendRow({
    required this.label,
    required this.primary,
    required this.secondary,
  });

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
          SizedBox(
            width: 88,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.neutralGray,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(primary, style: const TextStyle(fontSize: 13)),
                Text(
                  secondary,
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
