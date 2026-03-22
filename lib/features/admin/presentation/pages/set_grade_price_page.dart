import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:spice_ledger/core/theme/components/buttons.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/product_entity.dart';
import '../bloc/products/set_grade_price_cubit.dart';

class SetGradePricePage extends StatelessWidget {
  final ProductEntity product;

  const SetGradePricePage({super.key, required this.product});

  static Future<bool?> push(BuildContext context, ProductEntity product) async {
    return await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => getIt<SetGradePriceCubit>(param1: product),
          child: SetGradePricePage(product: product),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SetGradePriceCubit, SetGradePriceState>(
      listener: (context, state) {
        if (state.isSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Prices updated successfully')),
          );
          Navigator.pop(context, true);
        }
        if (state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage!),
              backgroundColor: AppColors.danger,
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Set Grade Prices',
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall?.copyWith(color: Colors.white70),
                ),
              ],
            ),
            actions: [
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  side: BorderSide(color: AppColors.blueAccent),
                ),
                icon: const Icon(
                  Icons.calendar_today,
                  size: 14,
                  color: AppColors.blueAccent,
                ),
                label: Text(
                  DateFormat('dd MMM').format(state.date),
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge?.copyWith(color: AppColors.blueAccent),
                ),
                onPressed: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: state.date,
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                  );
                  if (picked != null && context.mounted) {
                    context.read<SetGradePriceCubit>().dateChanged(picked);
                  }
                },
              ),
              SizedBox(width: 20),
            ],
          ),
          body: state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: state.grades.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final grade = state.grades[index];
                    return _GradePriceItem(grade: grade);
                  },
                ),
          bottomNavigationBar: BottomAppBar(
            child: PrimaryButton(
              label: state.isLoading ? 'Saving...' : 'Save Prices',
              onPressed: state.isLoading
                  ? null
                  : () {
                      context.read<SetGradePriceCubit>().savePrices();
                    },
            ),
          ),
        );
      },
    );
  }
}

class _GradePriceItem extends StatelessWidget {
  final GradeEntity grade;

  const _GradePriceItem({required this.grade});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
        side: BorderSide(color: AppColors.neutralGray.withValues(alpha: 0.2)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    grade.name,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (grade.description.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(
                      grade.description,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppColors.neutralGray,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 16),
            SizedBox(
              width: 120,
              child: TextFormField(
                initialValue:
                    context
                        .read<SetGradePriceCubit>()
                        .state
                        .gradePrices[grade.id]
                        ?.toString() ??
                    '',
                decoration: InputDecoration(
                  prefixText: '₹ ',
                  labelText: 'Price',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                onChanged: (value) {
                  final price = double.tryParse(value) ?? 0.0;
                  context.read<SetGradePriceCubit>().priceChanged(
                    grade.id,
                    price,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
