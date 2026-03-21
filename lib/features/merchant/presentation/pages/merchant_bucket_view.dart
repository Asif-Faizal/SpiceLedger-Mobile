import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../cubit/merchant_navigation_cubit.dart';
import '../widgets/merchant_nav_bar.dart';
import 'merchant_dashboard_page.dart';
import 'merchant_inventory_page.dart';
import 'merchant_profile_page.dart';
import 'merchant_transactions_page.dart';

class MerchantBucketView extends StatelessWidget {
  const MerchantBucketView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MerchantNavigationCubit>(),
      child: BlocBuilder<MerchantNavigationCubit, int>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.account_circle),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const MerchantProfilePage()),
                  );
                },
              ),
              title: Text(MerchantNavBar.getTitle(state)),
            ),
            body: IndexedStack(
              index: state,
              children: const [
                MerchantDashboardPage(),
                MerchantInventoryPage(),
                MerchantTransactionsPage(),
              ],
            ),
            bottomNavigationBar: MerchantNavBar(
              currentIndex: state,
              onTap: (index) =>
                  context.read<MerchantNavigationCubit>().setSelectedIndex(index),
            ),
          );
        },
      ),
    );
  }
}
