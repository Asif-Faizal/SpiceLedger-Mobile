import 'package:flutter/material.dart';

import 'merchant_profile_page.dart';

class MerchantDashboardPage extends StatelessWidget {
  const MerchantDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Merchant Dashboard'),
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const MerchantProfilePage()),
            );
          },
        ),
      ),
    );
  }
}
