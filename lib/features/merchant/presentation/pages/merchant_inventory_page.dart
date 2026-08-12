import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/inventory_entity.dart';
import '../../domain/utils/merchant_market_utils.dart';
import '../bloc/inventory/merchant_inventory_bloc.dart';
import '../bloc/inventory/merchant_inventory_event.dart';
import '../bloc/inventory/merchant_inventory_state.dart';
import '../widgets/merchant_market_widgets.dart';

class MerchantInventoryPage extends StatelessWidget {
  const MerchantInventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MerchantInventoryBloc>()
        ..add(const MerchantInventoryEvent.fetch()),
      child: const _MerchantInventoryView(),
    );
  }
}

class _MerchantInventoryView extends StatelessWidget {
  const _MerchantInventoryView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MerchantInventoryBloc, MerchantInventoryState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(child: Text('Error: $message')),
          loaded: (items) => RefreshIndicator(
            onRefresh: () async {
              context.read<MerchantInventoryBloc>().add(
                    const MerchantInventoryEvent.fetch(),
                  );
            },
            child: items.isEmpty
                ? ListView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    children: const [
                      SizedBox(height: 120),
                      Center(child: Text('No inventory data')),
                    ],
                  )
                : ListView(
                    padding: const EdgeInsets.all(16),
                    physics: const AlwaysScrollableScrollPhysics(),
                    children: [
                      _InventorySummary(items: items),
                      const SizedBox(height: 16),
                      ...items.map(
                        (item) => Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: _ProductInventoryCard(item: item),
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}

class _InventorySummary extends StatelessWidget {
  final List<InventoryProductItemEntity> items;

  const _InventorySummary({required this.items});

  @override
  Widget build(BuildContext context) {
    final openProducts = items.where((i) => i.openGradeCount > 0).length;
    final totalValue =
        items.fold(0.0, (sum, i) => sum + i.totalMarketValue);
    final totalQty =
        items.fold(0.0, (sum, i) => sum + i.totalQuantity);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.blueAccent.withValues(alpha: 0.05),
        border: Border.all(color: AppColors.blueAccent.withValues(alpha: 0.2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: _SummaryStat(
              label: 'Products held',
              value: openProducts.toString(),
            ),
          ),
          Expanded(
            child: _SummaryStat(
              label: 'Total quantity',
              value: '${totalQty.toStringAsFixed(1)} kg',
            ),
          ),
          Expanded(
            child: _SummaryStat(
              label: 'Market value',
              value: '₹${totalValue.toStringAsFixed(0)}',
            ),
          ),
        ],
      ),
    );
  }
}

class _SummaryStat extends StatelessWidget {
  final String label;
  final String value;

  const _SummaryStat({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppColors.nearBlack,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11, color: AppColors.neutralGray),
        ),
      ],
    );
  }
}

class _ProductInventoryCard extends StatelessWidget {
  final InventoryProductItemEntity item;

  const _ProductInventoryCard({required this.item});

  @override
  Widget build(BuildContext context) {
    final product = item.product;
    final lookup = GradeLabelLookup.fromProducts([product]);

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: AppColors.outline),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          title: Text(
            product.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                product.category,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.neutralGray,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                '${item.openGradeCount}/${item.grades.length} grades · '
                '${item.totalQuantity.toStringAsFixed(1)} kg · '
                '₹${item.totalMarketValue.toStringAsFixed(0)}',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          children: item.grades.map((gradeItem) {
            final grade = gradeItem.grade;
            final position = gradeItem.position;
            final label = lookup.labelFor(grade.id);

            if (position == null || position.totalQty <= 0) {
              return Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.lightGray.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            grade.name,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'No open position · List ₹${grade.price.toStringAsFixed(0)}/kg',
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

            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: MerchantPositionCard(
                position: position,
                label: label.split(' · ').last,
                onTap: () => openGradePositionDetail(
                  context,
                  grade.id,
                  label: label,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
