import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/components/buttons.dart';
import '../../domain/entities/product_entity.dart';
import '../bloc/products/product_action_bloc.dart';
import '../bloc/products/product_action_event.dart';
import '../bloc/products/product_action_state.dart';
import '../../../../core/di/injection.dart';
import '../bloc/products/product_form_cubit.dart';
import '../bloc/products/grade_form_cubit.dart';
import '../bloc/products/admin_products_bloc.dart';
import '../bloc/products/admin_products_event.dart';
import '../bloc/products/admin_products_state.dart';
import '../../../../core/widgets/shimmer_widget.dart';
import '../../../../core/widgets/searchable_dropdown.dart';

class ProductFormDialog extends StatelessWidget {
  final ProductEntity? product;

  const ProductFormDialog({super.key, this.product});

  static Future<bool?> show(BuildContext context, {ProductEntity? product}) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (_) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<ProductActionBloc>()),
          BlocProvider(
            create: (_) => ProductFormCubit(
              name: product?.name,
              category: product?.category,
              description: product?.description,
              status: product?.status,
            ),
          ),
        ],
        child: ProductFormDialog(product: product),
      ),
    );
  }

  void _submit(BuildContext context, ProductFormState formState) {
    context.read<ProductActionBloc>().add(
      ProductActionEvent.createOrUpdateProduct({
        'id': product?.id ?? '',
        'name': formState.name.trim(),
        'category': formState.category.trim(),
        'description': formState.description.trim(),
        'status': formState.status,
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductActionBloc, ProductActionState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (msg) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(msg)));
            Navigator.of(context).pop(true);
          },
          error: (msg) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(msg), backgroundColor: AppColors.danger),
            );
          },
          orElse: () {},
        );
      },
      builder: (context, actionState) {
        final isLoading = actionState.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return BlocBuilder<ProductFormCubit, ProductFormState>(
          builder: (context, formState) {
            final cubit = context.read<ProductFormCubit>();

            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              backgroundColor: AppColors.lightGray,
              title: Text(product != null ? 'Edit Product' : 'Add Product'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      initialValue: formState.name,
                      onChanged: cubit.nameChanged,
                      decoration: const InputDecoration(labelText: 'Name'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      initialValue: formState.category,
                      onChanged: cubit.categoryChanged,
                      decoration: const InputDecoration(labelText: 'Category'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      initialValue: formState.description,
                      onChanged: cubit.descriptionChanged,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        labelText: 'Description',
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                SecondaryButton(
                  label: 'Cancel',
                  onPressed: isLoading
                      ? null
                      : () => Navigator.of(context).pop(),
                ),
                const SizedBox(height: 5),
                PrimaryButton(
                  label: isLoading ? 'Saving...' : 'Save',
                  onPressed: isLoading
                      ? () {}
                      : () => _submit(context, formState),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class GradeFormDialog extends StatelessWidget {
  final GradeEntity? grade;
  final String? fixedProductId;

  const GradeFormDialog({super.key, this.grade, this.fixedProductId});

  static Future<bool?> show(
    BuildContext context, {
    GradeEntity? grade,
    String? fixedProductId,
  }) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (_) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<ProductActionBloc>()),
          BlocProvider(
            create: (_) =>
                getIt<AdminProductsBloc>()
                  ..add(const AdminProductsEvent.refresh()),
          ),
          BlocProvider(
            create: (_) => GradeFormCubit(
              name: grade?.name,
              description: grade?.description,
              status: grade?.status,
              selectedProductId: fixedProductId,
            ),
          ),
        ],
        child: GradeFormDialog(grade: grade, fixedProductId: fixedProductId),
      ),
    );
  }

  void _submit(BuildContext context, GradeFormState formState) {
    if (formState.selectedProductId == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please select a product')));
      return;
    }

    context.read<ProductActionBloc>().add(
      ProductActionEvent.createOrUpdateGrade({
        'id': grade?.id ?? '',
        'name': formState.name.trim(),
        'description': formState.description.trim(),
        'status': formState.status,
        'productId': formState.selectedProductId,
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductActionBloc, ProductActionState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (msg) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(msg)));
            Navigator.of(context).pop(true);
          },
          error: (msg) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(msg), backgroundColor: AppColors.danger),
            );
          },
          orElse: () {},
        );
      },
      builder: (context, actionState) {
        final isLoading = actionState.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return BlocBuilder<GradeFormCubit, GradeFormState>(
          builder: (context, formState) {
            final cubit = context.read<GradeFormCubit>();

            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              backgroundColor: AppColors.lightGray,
              title: Text(grade != null ? 'Edit Grade' : 'Add Grade'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (fixedProductId == null)
                      BlocBuilder<AdminProductsBloc, AdminProductsState>(
                        builder: (context, productsState) {
                          return productsState.maybeWhen(
                            loaded: (products, search, date) {
                              return SearchableDropdown<String>(
                                value: formState.selectedProductId,
                                label: 'Product',
                                hint: 'Select a product',
                                items: products
                                    .map((p) => SearchableDropdownItem<String>(
                                          value: p.id,
                                          label: p.name,
                                        ))
                                    .toList(),
                                onChanged: (val) {
                                  if (val != null) cubit.productChanged(val);
                                },
                              );
                            },
                            orElse: () => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: const ShimmerWidget.rectangular(height: 56),
                            ),
                          );
                        },
                      ),
                    const SizedBox(height: 16),
                    TextFormField(
                      initialValue: formState.name,
                      onChanged: cubit.nameChanged,
                      decoration: const InputDecoration(labelText: 'Name'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      initialValue: formState.description,
                      onChanged: cubit.descriptionChanged,
                      maxLines: 2,
                      decoration: const InputDecoration(
                        labelText: 'Description',
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                SecondaryButton(
                  label: 'Cancel',
                  onPressed: isLoading
                      ? null
                      : () => Navigator.of(context).pop(),
                ),
                const SizedBox(height: 5),
                PrimaryButton(
                  label: isLoading ? 'Saving...' : 'Save',
                  onPressed: isLoading
                      ? () {}
                      : () => _submit(context, formState),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
