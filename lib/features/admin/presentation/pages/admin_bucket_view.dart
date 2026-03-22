import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../cubit/admin_navigation_cubit.dart';
import '../widgets/admin_nav_bar.dart';
import 'admin_ads_page.dart';
import 'admin_dashboard_page.dart';
import 'admin_products_page.dart';
import 'admin_profile_page.dart';
import '../bloc/products/admin_products_bloc.dart';
import '../bloc/products/admin_products_event.dart';
import '../widgets/product_action_dialogs.dart';
import 'package:intl/intl.dart';

class AdminBucketView extends StatelessWidget {
  const AdminBucketView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AdminNavigationCubit>()),
        BlocProvider(
          create: (context) => getIt<AdminProductsBloc>()
            ..add(
              AdminProductsEvent.fetchProducts(
                date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
              ),
            ),
        ),
      ],
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
              actions: [
                if (AdminNavBar.isProductPage(state))
                  PopupMenuButton<String>(
                    onSelected: (value) async {
                      bool? result;
                      if (value == 'product') {
                        result = await ProductFormDialog.show(context);
                      } else if (value == 'grade') {
                        result = await GradeFormDialog.show(context);
                      }
                      if (result == true && context.mounted) {
                        context
                            .read<AdminProductsBloc>()
                            .add(const AdminProductsEvent.refresh());
                      }
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 'product',
                        child: Row(
                          children: [
                            const Icon(Icons.add_box, color: AppColors.blueAccent),
                            const SizedBox(width: 8),
                            const Text('Add Product'),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'grade',
                        child: Row(
                          children: [
                            const Icon(Icons.add_task, color: AppColors.nearBlack),
                            const SizedBox(width: 8),
                            const Text('Add Grade'),
                          ],
                        ),
                      ),
                    ],
                    icon: const Icon(Icons.add),
                  ),
              ],
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
