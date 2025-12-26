import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../bloc/admin_bloc.dart';
import '../../data/models/daily_price_model.dart';
import '../../domain/entities/product.dart';
import '../../../inventory/domain/entities/grade.dart';

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

  void _showCreateGradeDialog(BuildContext context) {
    final nameController = TextEditingController();
    final descController = TextEditingController();
    String? selectedProductId;

    final state = context.read<AdminBloc>().state;
    List<Product> products = [];
    state.maybeWhen(
      catalog: (p, g, prices) {
        products = p;
        if (products.isNotEmpty) selectedProductId = products.first.id;
      },
      orElse: () {},
    );
    final manualProductController = TextEditingController();

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Create Grade'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (products.isNotEmpty)
              DropdownButtonFormField<String>(
                value: selectedProductId,
                items: products
                    .map(
                      (p) => DropdownMenuItem(
                        value: p.id,
                        child: Text(p.name),
                      ),
                    )
                    .toList(),
                onChanged: (v) => selectedProductId = v,
                decoration: const InputDecoration(labelText: 'Product'),
              )
            else
              TextField(
                controller: manualProductController,
                decoration: const InputDecoration(labelText: 'Product ID'),
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
        actions: [
          TextButton(
            onPressed: () {
              final pid = selectedProductId ?? manualProductController.text;
              if (pid.isEmpty) return;
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
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Load products and grades first.')),
      );
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
                value: selectedProductId,
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
                value: selectedGradeId,
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
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(msg)));
            context.read<AdminBloc>().add(const AdminEvent.loadStats());
          },
          failure: (msg) => ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(msg))),
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
                ],
              ),
              const SizedBox(height: 20),
              state.maybeWhen(
                catalog: (products, grades, prices) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Products'),
                    if (products.isEmpty)
                      const Text('- (none)')
                    else
                      ...products.map((p) => Text('- ${p.name}')),
                    const SizedBox(height: 10),
                    const Text("Grades & Today's Price"),
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
                      return Text('- ${g.name}: $price');
                    }),
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
