import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_theme.dart';
import '../bloc/products/admin_products_bloc.dart';
import '../bloc/products/admin_products_event.dart';
import '../bloc/products/admin_products_state.dart';
import 'product_page.dart';

class AdminProductsPage extends StatelessWidget {
  const AdminProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _AdminProductsView();
  }
}

class _AdminProductsView extends StatelessWidget {
  const _AdminProductsView();

  Future<void> _selectDate(BuildContext context, String? currentDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: currentDate != null
          ? DateFormat('yyyy-MM-dd').parse(currentDate)
          : DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(primary: AppColors.blueAccent),
            datePickerTheme: const DatePickerThemeData(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && context.mounted) {
      context.read<AdminProductsBloc>().add(
        AdminProductsEvent.dateChanged(DateFormat('yyyy-MM-dd').format(picked)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: AppColors.white,
            child: BlocBuilder<AdminProductsBloc, AdminProductsState>(
              builder: (context, state) {
                return Row(
                  children: [
                    Expanded(child: _SearchField(initialValue: state.search)),
                    const SizedBox(width: 16.0),
                    InkWell(
                      onTap: () => _selectDate(context, state.date),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.outline),
                          color: AppColors.white,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.calendar_today,
                              size: 16,
                              color: AppColors.blueAccent,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              state.date != null
                                  ? DateFormat('MMM dd, yyyy').format(
                                      DateFormat(
                                        'yyyy-MM-dd',
                                      ).parse(state.date!),
                                    )
                                  : 'Select Date',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          // List section
          Expanded(
            child: BlocBuilder<AdminProductsBloc, AdminProductsState>(
              builder: (context, state) {
                return state.when(
                  initial: (search, date) =>
                      const Center(child: CircularProgressIndicator()),
                  loading: (search, date) =>
                      const Center(child: CircularProgressIndicator()),
                  error: (msg, search, date) =>
                      Center(child: Text('Error: $msg')),
                  loaded: (products, search, date) {
                    if (products.isEmpty) {
                      return const Center(child: Text('No products found.'));
                    }
                    return ListView.separated(
                      padding: const EdgeInsets.all(16.0),
                      itemCount: products.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 16.0),
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ProductPage(product: product),
                              ),
                            ).then((_) {
                              context.read<AdminProductsBloc>().add(
                                const AdminProductsEvent.refresh(),
                              );
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              border: Border.all(color: AppColors.outline),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Image Placeholder
                                      Container(
                                        width: 60,
                                        height: 60,
                                        color: AppColors.lightGray,
                                        child: const Icon(
                                          Icons.image_not_supported_outlined,
                                          color: AppColors.neutralGray,
                                        ),
                                      ),
                                      const SizedBox(width: 16.0),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              product.name,
                                              style: Theme.of(
                                                context,
                                              ).textTheme.titleSmall,
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              product.category.toUpperCase(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                    color:
                                                        AppColors.neutralGray,
                                                    fontSize: 12,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        color: product.status == 'active'
                                            ? AppColors.success.withOpacity(0.1)
                                            : AppColors.danger.withOpacity(0.1),
                                        child: Text(
                                          product.status.toUpperCase(),
                                          style: TextStyle(
                                            color: product.status == 'active'
                                                ? AppColors.success
                                                : AppColors.danger,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(
                                  height: 1,
                                  color: AppColors.outline,
                                ),
                                if (product.grades.isNotEmpty)
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Wrap(
                                      spacing: 8,
                                      runSpacing: 8,
                                      children: product.grades
                                          .take(5)
                                          .map(
                                            (grade) => Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 12,
                                                    vertical: 8,
                                                  ),
                                              decoration: BoxDecoration(
                                                color: AppColors.lightGray,
                                                border: Border.all(
                                                  color: AppColors.outline,
                                                ),
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    grade.name,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium
                                                        ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  const SizedBox(height: 2),
                                                  Text(
                                                    grade.price != null
                                                        ? '₹${grade.price!.toStringAsFixed(2)}'
                                                        : 'N/A',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium
                                                        ?.copyWith(
                                                          color: AppColors
                                                              .blueAccent,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchField extends StatefulWidget {
  final String initialValue;
  const _SearchField({required this.initialValue});

  @override
  State<_SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<_SearchField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: (val) => context.read<AdminProductsBloc>().add(
        AdminProductsEvent.searchChanged(val),
      ),
      decoration: InputDecoration(
        hintText: 'Search products or grades...',
        prefixIcon: const Icon(Icons.search, color: AppColors.neutralGray),
        filled: true,
        fillColor: AppColors.lightGray,
        border: const OutlineInputBorder(borderSide: BorderSide.none),
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      ),
    );
  }
}
