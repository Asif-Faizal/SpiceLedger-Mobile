import 'package:flutter/material.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.admin_panel_settings),
        title: const Text('Admin Dashboard'),
      ),
      body: const Center(child: Text('Admin Dashboard')),
    );
  }
}
