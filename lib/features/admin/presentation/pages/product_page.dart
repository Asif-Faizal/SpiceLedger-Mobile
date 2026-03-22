import 'package:flutter/material.dart';
import 'package:spice_ledger/core/theme/components/buttons.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/product_entity.dart';
import '../widgets/product_action_dialogs.dart';
import 'set_grade_price_page.dart';

class ProductPage extends StatelessWidget {
  final ProductEntity product;

  const ProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      appBar: AppBar(
        title: const Text('Product Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            onPressed: () async {
              final result = await ProductFormDialog.show(
                context,
                product: product,
              );
              if (result == true && context.mounted) {
                Navigator.pop(context); // Refresh handled by parent page
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.currency_rupee),
            tooltip: 'Set Grade Prices',
            onPressed: () async {
              final result = await SetGradePricePage.push(context, product);
              if (result == true && context.mounted) {
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Product Header Info
            Container(
              padding: const EdgeInsets.all(24.0),
              color: AppColors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: AppColors.lightGray,
                    child: const Icon(
                      Icons.image_not_supported_outlined,
                      color: AppColors.neutralGray,
                      size: 32,
                    ),
                  ),
                  const SizedBox(width: 24.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          product.category.toUpperCase(),
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: AppColors.neutralGray,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          product.description,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 16),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: product.status == 'active'
                                ? AppColors.success.withValues(alpha: 0.1)
                                : AppColors.danger.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            product.status.toUpperCase(),
                            style: TextStyle(
                              color: product.status == 'active'
                                  ? AppColors.success
                                  : AppColors.danger,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            // Grades Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Grades',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  TextButton.icon(
                    onPressed: () async {
                      final result = await GradeFormDialog.show(
                        context,
                        fixedProductId: product.id,
                      );
                      if (result == true && context.mounted) {
                        Navigator.pop(
                          context,
                        ); // Refresh handled by parent page
                      }
                    },
                    icon: const Icon(Icons.add, color: AppColors.blueAccent),
                    label: const Text(
                      'Add Grade',
                      style: TextStyle(color: AppColors.blueAccent),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            if (product.grades.isEmpty)
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Center(
                  child: Text('No grades defined for this product.'),
                ),
              )
            else
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: product.grades.length,
                itemBuilder: (context, index) {
                  final grade = product.grades[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 8,
                    ),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: AppColors.outline),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                grade.name,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                grade.description,
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(color: AppColors.neutralGray),
                              ),
                              const SizedBox(height: 4),
                              if (grade.price != null)
                                Text(
                                  '₹${grade.price!.toStringAsFixed(2)}',
                                  style: Theme.of(context).textTheme.labelMedium
                                      ?.copyWith(color: AppColors.blueAccent),
                                ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              color: grade.status == 'active'
                                  ? AppColors.success.withValues(alpha: 0.1)
                                  : AppColors.danger.withValues(alpha: 0.1),
                              child: Text(
                                grade.status.toUpperCase(),
                                style: TextStyle(
                                  color: grade.status == 'active'
                                      ? AppColors.success
                                      : AppColors.danger,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.edit_outlined,
                                size: 14,
                                color: AppColors.neutralGray,
                              ),
                              onPressed: () async {
                                final result = await GradeFormDialog.show(
                                  context,
                                  grade: grade,
                                  fixedProductId: product.id,
                                );
                                if (result == true && context.mounted) {
                                  Navigator.pop(
                                    context,
                                  ); // Refresh handled by parent page
                                }
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            const SizedBox(height: 32.0),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: product.grades.isNotEmpty
            ? PrimaryButton(
                label: 'SET PRICE',
                onPressed: () async {
                  final result = await SetGradePricePage.push(context, product);
                  if (result == true && context.mounted) {
                    Navigator.pop(context);
                  }
                },
              )
            : null,
      ),
    );
  }
}
