import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/components/buttons.dart';
import '../../domain/entities/product_entity.dart';
import '../bloc/products/product_action_bloc.dart';
import '../bloc/products/product_action_event.dart';
import '../bloc/products/product_action_state.dart';
import '../../../../core/di/injection.dart';

class ProductFormDialog extends StatefulWidget {
  final ProductEntity? product;

  const ProductFormDialog({super.key, this.product});

  static Future<bool?> show(BuildContext context, {ProductEntity? product}) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (_) => BlocProvider(
        create: (_) => getIt<ProductActionBloc>(),
        child: ProductFormDialog(product: product),
      ),
    );
  }

  @override
  State<ProductFormDialog> createState() => _ProductFormDialogState();
}

class _ProductFormDialogState extends State<ProductFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _categoryController;
  late TextEditingController _descriptionController;
  String _status = 'active';

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.product?.name);
    _categoryController = TextEditingController(text: widget.product?.category);
    _descriptionController = TextEditingController(
      text: widget.product?.description,
    );
    if (widget.product?.status != null) {
      _status = widget.product!.status;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _categoryController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<ProductActionBloc>().add(
        ProductActionEvent.createOrUpdateProduct({
          'id': widget.product?.id ?? '',
          'name': _nameController.text.trim(),
          'category': _categoryController.text.trim(),
          'description': _descriptionController.text.trim(),
          'status': _status,
        }),
      );
    }
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
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return AlertDialog(
          backgroundColor: AppColors.lightGray,
          title: Text(widget.product != null ? 'Edit Product' : 'Add Product'),
          content: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(labelText: 'Name'),
                    validator: (val) =>
                        val == null || val.isEmpty ? 'Required' : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _categoryController,
                    decoration: const InputDecoration(labelText: 'Category'),
                    validator: (val) =>
                        val == null || val.isEmpty ? 'Required' : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _descriptionController,
                    maxLines: 3,
                    decoration: const InputDecoration(labelText: 'Description'),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    value: _status,
                    decoration: const InputDecoration(labelText: 'Status'),
                    items: const [
                      DropdownMenuItem(value: 'active', child: Text('Active')),
                      DropdownMenuItem(
                        value: 'inactive',
                        child: Text('Inactive'),
                      ),
                    ],
                    onChanged: (val) {
                      if (val != null) setState(() => _status = val);
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: isLoading ? null : () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            PrimaryButton(
              label: isLoading ? 'Saving...' : 'Save',
              onPressed: isLoading ? () {} : _submit,
            ),
          ],
        );
      },
    );
  }
}

class GradeFormDialog extends StatefulWidget {
  final GradeEntity? grade;
  final String? fixedProductId; // If opened from ProductPage

  const GradeFormDialog({super.key, this.grade, this.fixedProductId});

  static Future<bool?> show(
    BuildContext context, {
    GradeEntity? grade,
    String? fixedProductId,
  }) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (_) => BlocProvider(
        create: (_) => getIt<ProductActionBloc>(),
        child: GradeFormDialog(grade: grade, fixedProductId: fixedProductId),
      ),
    );
  }

  @override
  State<GradeFormDialog> createState() => _GradeFormDialogState();
}

class _GradeFormDialogState extends State<GradeFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;
  String _status = 'active';
  String? _selectedProductId;

  @override
  void initState() {
    super.initState();
    _selectedProductId = widget.fixedProductId;
    _nameController = TextEditingController(text: widget.grade?.name);
    _descriptionController = TextEditingController(
      text: widget.grade?.description,
    );
    if (widget.grade?.status != null) {
      _status = widget.grade!.status;
    }

    if (_selectedProductId == null) {
      context.read<ProductActionBloc>().add(
        const ProductActionEvent.loadRestProducts(),
      );
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      if (_selectedProductId == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please select a product'),
            backgroundColor: AppColors.danger,
          ),
        );
        return;
      }

      context.read<ProductActionBloc>().add(
        ProductActionEvent.createOrUpdateGrade({
          'id': widget.grade?.id ?? '',
          'productId': _selectedProductId,
          'name': _nameController.text.trim(),
          'description': _descriptionController.text.trim(),
          'status': _status,
        }),
      );
    }
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
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );
        final List<ProductEntity>? loadedProducts = state.maybeWhen(
          restProductsLoaded: (products) => products,
          orElse: () => null,
        );

        return AlertDialog(
          backgroundColor: AppColors.lightGray,
          title: Text(widget.grade != null ? 'Edit Grade' : 'Add Grade'),
          content: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.fixedProductId == null) ...[
                    if (loadedProducts != null)
                      DropdownButtonFormField<String>(
                        initialValue: _selectedProductId,
                        decoration: const InputDecoration(
                          labelText: 'Select Product',
                        ),
                        items: loadedProducts.map((p) {
                          return DropdownMenuItem(
                            value: p.id,
                            child: Text(p.name),
                          );
                        }).toList(),
                        onChanged: (val) {
                          if (val != null)
                            setState(() => _selectedProductId = val);
                        },
                        validator: (val) => val == null ? 'Required' : null,
                      )
                    else
                      const CircularProgressIndicator(),
                    const SizedBox(height: 16),
                  ],
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(labelText: 'Name'),
                    validator: (val) =>
                        val == null || val.isEmpty ? 'Required' : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _descriptionController,
                    maxLines: 3,
                    decoration: const InputDecoration(labelText: 'Description'),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    value: _status,
                    decoration: const InputDecoration(labelText: 'Status'),
                    items: const [
                      DropdownMenuItem(value: 'active', child: Text('Active')),
                      DropdownMenuItem(
                        value: 'inactive',
                        child: Text('Inactive'),
                      ),
                    ],
                    onChanged: (val) {
                      if (val != null) setState(() => _status = val);
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: isLoading ? null : () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            PrimaryButton(
              label: isLoading ? 'Saving...' : 'Save',
              onPressed: isLoading ? () {} : _submit,
            ),
          ],
        );
      },
    );
  }
}
