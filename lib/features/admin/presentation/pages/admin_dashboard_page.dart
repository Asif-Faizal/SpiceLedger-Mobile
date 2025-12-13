import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../bloc/admin_bloc.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AdminBloc>()..add(const AdminEvent.loadStats()),
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
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Create Grade'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
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
              context.read<AdminBloc>().add(
                AdminEvent.createGrade(
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
    final gradeController = TextEditingController();
    final priceController = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Set Daily Price'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: dateController,
              decoration: const InputDecoration(labelText: 'Date (YYYY-MM-DD)'),
            ),
            TextField(
              controller: gradeController,
              decoration: const InputDecoration(labelText: 'Grade Name'),
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
              context.read<AdminBloc>().add(
                AdminEvent.setPrice(
                  dateController.text,
                  gradeController.text,
                  price,
                ),
              );
              Navigator.pop(ctx);
            },
            child: const Text('Set'),
          ),
        ],
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
            ],
          ),
        );
      },
    );
  }
}
