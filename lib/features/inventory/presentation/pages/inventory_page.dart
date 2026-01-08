import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../domain/entities/grade.dart';
import '../bloc/inventory_bloc.dart';
import '../../../../core/theme/components/snackbars.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<InventoryBloc>()..add(const InventoryEvent.loadData()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Inventory')),
        body: const InventoryView(),
      ),
    );
  }
}

class InventoryView extends StatelessWidget {
  const InventoryView({super.key});

  void _showAddLotDialog(BuildContext context, List<Grade> grades) {
    if (grades.isEmpty) {
      showInfoSnackbar(context, 'No grades available. Ask Admin to create grades.');
      return;
    }
    final dateController = TextEditingController(
      text: DateTime.now().toIso8601String().split('T')[0],
    );
    final quantityController = TextEditingController();
    final costController = TextEditingController();
    String? selectedGradeId = grades.first.id;

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Add Purchase Lot (Stock In)'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: dateController,
              decoration: const InputDecoration(labelText: 'Date (YYYY-MM-DD)'),
            ),
            DropdownButtonFormField<String>(
              value: selectedGradeId,
              items: grades
                  .map(
                    (g) => DropdownMenuItem(value: g.id, child: Text(g.name)),
                  )
                  .toList(),
              onChanged: (v) => selectedGradeId = v,
              decoration: const InputDecoration(labelText: 'Grade'),
            ),
            TextField(
              controller: quantityController,
              decoration: const InputDecoration(labelText: 'Quantity (kg)'),
            ),
            TextField(
              controller: costController,
              decoration: const InputDecoration(labelText: 'Unit Cost'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              final qty = double.tryParse(quantityController.text) ?? 0.0;
              final cost = double.tryParse(costController.text) ?? 0.0;
              if (selectedGradeId != null) {
                context.read<InventoryBloc>().add(
                  InventoryEvent.addLot(
                    dateController.text,
                    selectedGradeId!,
                    qty,
                    cost,
                  ),
                );
                Navigator.pop(ctx);
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  void _showAddSaleDialog(BuildContext context, List<Grade> grades) {
    if (grades.isEmpty) {
      showInfoSnackbar(context, 'No grades available.');
      return;
    }
    final dateController = TextEditingController(
      text: DateTime.now().toIso8601String().split('T')[0],
    );
    final quantityController = TextEditingController();
    final priceController = TextEditingController();
    String? selectedGradeId = grades.first.id;

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Add Sale (Stock Out)'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: dateController,
              decoration: const InputDecoration(labelText: 'Date (YYYY-MM-DD)'),
            ),
            DropdownButtonFormField<String>(
              value: selectedGradeId,
              items: grades
                  .map(
                    (g) => DropdownMenuItem(value: g.id, child: Text(g.name)),
                  )
                  .toList(),
              onChanged: (v) => selectedGradeId = v,
              decoration: const InputDecoration(labelText: 'Grade'),
            ),
            TextField(
              controller: quantityController,
              decoration: const InputDecoration(labelText: 'Quantity (kg)'),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(labelText: 'Unit Price'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              final qty = double.tryParse(quantityController.text) ?? 0.0;
              final price = double.tryParse(priceController.text) ?? 0.0;
              if (selectedGradeId != null) {
                context.read<InventoryBloc>().add(
                  InventoryEvent.addSale(
                    dateController.text,
                    selectedGradeId!,
                    qty,
                    price,
                  ),
                );
                Navigator.pop(ctx);
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InventoryBloc, InventoryState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (msg) {
            showSuccessSnackbar(context, msg);
            context.read<InventoryBloc>().add(const InventoryEvent.loadData());
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
                loaded: (inventory, grades) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Quantity: ${inventory.totalQuantity} kg',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Total Value: ${inventory.totalValue}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Current P&L: ${inventory.currentPL}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () => _showAddLotDialog(context, grades),
                          child: const Text('Stock In'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () => _showAddSaleDialog(context, grades),
                          child: const Text('Stock Out'),
                        ),
                      ],
                    ),
                  ],
                ),
                loading: () => const CircularProgressIndicator(),
                orElse: () => const Text('Loading...'),
              ),
            ],
          ),
        );
      },
    );
  }
}
