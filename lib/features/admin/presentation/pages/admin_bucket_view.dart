import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../cubit/admin_navigation_cubit.dart';
import '../widgets/admin_nav_bar.dart';
import 'admin_ads_page.dart';
import 'admin_dashboard_page.dart';
import 'admin_products_page.dart';
import 'admin_profile_page.dart';

class AdminBucketView extends StatelessWidget {
  const AdminBucketView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AdminNavigationCubit>(),
      child: BlocBuilder<AdminNavigationCubit, int>(
        builder: (context, state) {
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
              title: Text(AdminNavBar.getTitle(state)),
            ),
            body: IndexedStack(
              index: state,
              children: const [
                AdminDashboardPage(),
                AdminProductsPage(),
                AdminAdsPage(),
              ],
            ),
            bottomNavigationBar: AdminNavBar(
              currentIndex: state,
              onTap: (index) =>
                  context.read<AdminNavigationCubit>().setSelectedIndex(index),
            ),
          );
        },
      ),
    );
  }
}
