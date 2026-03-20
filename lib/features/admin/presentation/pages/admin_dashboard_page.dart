import 'package:flutter/material.dart';

import 'admin_profile_page.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.admin_panel_settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AdminProfilePage()),
            );
          },
        ),
        title: const Text('Admin Dashboard'),
      ),
      body: const Center(child: Text('Admin Dashboard')),
    );
  }
}
