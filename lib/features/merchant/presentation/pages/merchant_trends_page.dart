import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/merchant_dashboard_entity.dart';

class MerchantTrendsPage extends StatelessWidget {
  final List<PnlTrendPointEntity> pnlTrend;
  final List<ActivityTrendPointEntity> activityTrend;
  final int days;

  const MerchantTrendsPage({
    super.key,
    required this.pnlTrend,
    required this.activityTrend,
    required this.days,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trends (${days}d)')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const _SectionTitle('P&L Trend'),
          const SizedBox(height: 12),
          if (pnlTrend.isEmpty)
            const _EmptyState('No P&L data')
          else
            ...pnlTrend.map(
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
          const _SectionTitle('Activity Trend'),
          const SizedBox(height: 12),
          if (activityTrend.isEmpty)
            const _EmptyState('No activity data')
          else
            ...activityTrend.map(
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
