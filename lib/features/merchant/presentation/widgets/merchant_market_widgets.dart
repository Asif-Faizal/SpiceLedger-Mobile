import 'package:flutter/material.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/merchant_dashboard_entity.dart';
import '../../domain/entities/merchant_position_entity.dart';
import '../../domain/usecases/merchant_market_usecases.dart';

String shortGradeId(String id) {
  if (id.length <= 24) return id;
  return '${id.substring(0, 12)}…${id.substring(id.length - 8)}';
}

Future<void> openGradePositionDetail(
  BuildContext context,
  String spiceGradeId, {
  String? label,
}) async {
  final useCase = getIt<GetMerchantGradePositionUseCase>();
  final result = await useCase(spiceGradeId);

  if (!context.mounted) return;

  result.fold(
    (failure) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(failure.message)),
      );
    },
    (position) => showGradePositionDetailSheet(
      context,
      position,
      label: label,
    ),
  );
}

class MerchantPositionCard extends StatelessWidget {
  final MerchantPositionEntity position;
  final String? label;
  final VoidCallback? onTap;

  const MerchantPositionCard({
    super.key,
    required this.position,
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Container(
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
                    label ?? shortGradeId(position.spiceGradeId),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                if (onTap != null)
                  const Icon(
                    Icons.chevron_right,
                    size: 18,
                    color: AppColors.neutralGray,
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${position.totalQty.toStringAsFixed(1)} kg'),
                Text('₹${position.marketValue.toStringAsFixed(0)}'),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              'Avg ₹${position.avgCost.toStringAsFixed(0)} · Today ₹${position.todayPrice.toStringAsFixed(0)}',
              style: const TextStyle(fontSize: 12, color: AppColors.neutralGray),
            ),
            const SizedBox(height: 4),
            Text(
              'Unrealized: ₹${position.unrealizedPnL.toStringAsFixed(0)} · Realized: ₹${position.realizedPnL.toStringAsFixed(0)}',
              style: TextStyle(
                fontSize: 12,
                color: position.unrealizedPnL >= 0 ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MerchantTransactionCard extends StatelessWidget {
  final MerchantTransactionEntity txn;
  final String? gradeLabel;

  const MerchantTransactionCard({
    super.key,
    required this.txn,
    this.gradeLabel,
  });

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
                  gradeLabel ?? shortGradeId(txn.spiceGradeId),
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.neutralGray,
                  ),
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

void showGradePositionDetailSheet(
  BuildContext context,
  MerchantPositionEntity position, {
  String? label,
}) {
  showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label ?? 'Grade Position',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 4),
            Text(
              position.spiceGradeId,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.neutralGray,
              ),
            ),
            const SizedBox(height: 20),
            _DetailRow('Quantity', '${position.totalQty.toStringAsFixed(1)} kg'),
            _DetailRow('Total Cost', '₹${position.totalCost.toStringAsFixed(0)}'),
            _DetailRow('Avg Cost', '₹${position.avgCost.toStringAsFixed(0)}'),
            _DetailRow('Today Price', '₹${position.todayPrice.toStringAsFixed(0)}'),
            _DetailRow(
              'Market Value',
              '₹${position.marketValue.toStringAsFixed(0)}',
            ),
            _DetailRow(
              'Unrealized P&L',
              '₹${position.unrealizedPnL.toStringAsFixed(0)}',
            ),
            _DetailRow(
              'Realized P&L',
              '₹${position.realizedPnL.toStringAsFixed(0)}',
            ),
            _DetailRow('Updated', position.updatedAt),
          ],
        ),
      );
    },
  );
}

class _DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const _DetailRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: AppColors.neutralGray)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
