import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../bloc/admin_bloc.dart';
import '../../data/models/daily_price_model.dart';
import '../../domain/entities/product.dart';
import '../../../inventory/domain/entities/grade.dart';
import '../../../../core/theme/components/snackbars.dart';
 

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AdminBloc>()
        ..add(const AdminEvent.loadStats())
        ..add(const AdminEvent.loadCatalog()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Admin Dashboard')),
        body: const AdminView(),
      ),
    );
  }
}

class AdminView extends StatelessWidget {
  const AdminView({super.key});

  void _showAddProductDialog(BuildContext context) {
    final nameController = TextEditingController();
    final descController = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Add Product'),
        content: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Product Name'),
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? 'Required' : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: descController,
                decoration: const InputDecoration(labelText: 'Description'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () async {
              final name = nameController.text.trim();
              final desc = descController.text.trim();
              if (name.isEmpty) {
                showErrorSnackbar(context, 'Product name is required');
                return;
              }
              context
                  .read<AdminBloc>()
                  .add(AdminEvent.createProduct(name, desc));
              Navigator.pop(ctx);
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  void _showCreateGradeDialog(BuildContext context) {
    final nameController = TextEditingController();
    final descController = TextEditingController();
    String? selectedProductId;
    final adminBloc = context.read<AdminBloc>();
    final st = adminBloc.state;
    bool shouldLoad = true;
    st.maybeWhen(
      catalog: (products, grades, prices) {
        shouldLoad = products.isEmpty;
      },
      orElse: () {},
    );
    if (shouldLoad) {
      adminBloc.add(const AdminEvent.loadCatalog());
    }

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setState) => AlertDialog(
          title: const Text('Create Grade'),
          content: BlocBuilder<AdminBloc, AdminState>(
            bloc: adminBloc,
            builder: (context, state) {
              return state.maybeWhen(
                catalog: (products, grades, prices) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DropdownButtonFormField<String>(
                      initialValue:
                          selectedProductId ?? (products.isNotEmpty ? products.first.id : null),
                      items: products
                          .map(
                            (p) => DropdownMenuItem(
                              value: p.id,
                              child: Text(p.name),
                            ),
                          )
                          .toList(),
                      onChanged: (v) => setState(() => selectedProductId = v),
                      decoration: const InputDecoration(labelText: 'Product'),
                    ),
                    if (products.isEmpty)
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child:
                            Text('No products available. Please add a product first.'),
                      ),
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(labelText: 'Grade Name'),
                    ),
                    TextField(
                      controller: descController,
                      decoration: const InputDecoration(labelText: 'Description'),
                    ),
                  ],
                ),
                orElse: () => const SizedBox(
                  height: 48,
                  child: Center(child: CircularProgressIndicator()),
                ),
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                final st = context.read<AdminBloc>().state;
                String pid = '';
                st.maybeWhen(
                  catalog: (p, g, prices) {
                    pid = selectedProductId ?? (p.isNotEmpty ? p.first.id : '');
                  },
                  orElse: () {},
                );
                if (pid.isEmpty) {
                  showErrorSnackbar(context, 'Select a product');
                  return;
                }
                context.read<AdminBloc>().add(
                  AdminEvent.createGrade(
                    pid,
                    nameController.text,
                    descController.text,
                  ),
                );
                Navigator.pop(ctx);
              },
              child: const Text('Create'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSetPriceDialog(BuildContext context) {
    final dateController = TextEditingController(
      text: DateTime.now().toIso8601String().split('T')[0],
    );
    final priceController = TextEditingController();
    String? selectedProductId;
    String? selectedGradeId;

    final state = context.read<AdminBloc>().state;
    List<Product> products = [];
    List<Grade> grades = [];
    state.maybeWhen(
      catalog: (p, g, prices) {
        products = p;
        grades = g;
        if (products.isNotEmpty) selectedProductId = products.first.id;
        final initialGrades = grades
            .where((gr) => gr.productId == selectedProductId)
            .toList();
        if (initialGrades.isNotEmpty) selectedGradeId = initialGrades.first.id;
      },
      orElse: () {},
    );
    if (products.isEmpty || grades.isEmpty) {
      showInfoSnackbar(context, 'Load products and grades first.');
      return;
    }

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setState) => AlertDialog(
          title: const Text('Set Daily Price'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: dateController,
                decoration:
                    const InputDecoration(labelText: 'Date (YYYY-MM-DD)'),
              ),
              DropdownButtonFormField<String>(
                initialValue: selectedProductId,
                items: products
                    .map(
                      (p) => DropdownMenuItem(
                        value: p.id,
                        child: Text(p.name),
                      ),
                    )
                    .toList(),
                onChanged: (v) {
                  setState(() {
                    selectedProductId = v;
                    final filtered = grades
                        .where((gr) => gr.productId == selectedProductId)
                        .toList();
                    selectedGradeId = filtered.isNotEmpty ? filtered.first.id : null;
                  });
                },
                decoration: const InputDecoration(labelText: 'Product'),
              ),
              DropdownButtonFormField<String>(
                initialValue: selectedGradeId,
                items: grades
                    .where((gr) => gr.productId == selectedProductId)
                    .map(
                      (gr) => DropdownMenuItem(
                        value: gr.id,
                        child: Text(gr.name),
                      ),
                    )
                    .toList(),
                onChanged: (v) => setState(() => selectedGradeId = v),
                decoration: const InputDecoration(labelText: 'Grade'),
              ),
              TextField(
                controller: priceController,
                decoration: const InputDecoration(labelText: 'Price'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                final price = double.tryParse(priceController.text) ?? 0.0;
                if (selectedProductId == null || selectedGradeId == null) return;
                context.read<AdminBloc>().add(
                  AdminEvent.setPrice(
                    dateController.text,
                    selectedProductId!,
                    selectedGradeId!,
                    price,
                  ),
                );
                Navigator.pop(ctx);
              },
              child: const Text('Set'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdminBloc, AdminState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (msg) {
            showSuccessSnackbar(context, msg);
            context.read<AdminBloc>().add(const AdminEvent.loadStats());
            context.read<AdminBloc>().add(const AdminEvent.loadCatalog());
          },
          failure: (msg) => showErrorSnackbar(context, msg),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              state.maybeWhen(
                loaded: (stats) => Text(
                  'Total Users: ${stats.totalUsers}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                loading: () => const CircularProgressIndicator(),
                orElse: () => const Text('No stats loaded'),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () => _showCreateGradeDialog(context),
                    child: const Text('Create Grade'),
                  ),
                  ElevatedButton(
                    onPressed: () => _showSetPriceDialog(context),
                    child: const Text('Set Price'),
                  ),
                  ElevatedButton(
                    onPressed: () => _showAddProductDialog(context),
                    child: const Text('Add Product'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              state.maybeWhen(
                catalog: (products, grades, prices) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Products',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 8),
                            if (products.isEmpty)
                              const Text('- (none)')
                            else
                              ...products.map(
                                (p) => ListTile(
                                  dense: true,
                                  title: Text(p.name),
                                  subtitle: Text(p.description),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Grades & Today's Price",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 8),
                            ...grades.map((g) {
                              final items = prices.prices ?? const [];
                              final item = items.firstWhere(
                                (e) => e.gradeId == g.id,
                                orElse: () => const DailyPriceItem(
                                  productId: '',
                                  gradeId: '',
                                  pricePerKg: 0.0,
                                ),
                              );
                              final price = item.gradeId.isEmpty
                                  ? 'N/A'
                                  : item.pricePerKg.toString();
                              return ListTile(
                                dense: true,
                                title: Text(g.name),
                                trailing: Text(price),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                orElse: () => const SizedBox.shrink(),
              ),
            ],
          ),
        );
      },
    );
  }
}
