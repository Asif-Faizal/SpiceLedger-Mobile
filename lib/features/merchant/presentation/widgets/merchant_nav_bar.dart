import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class MerchantNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;

  const MerchantNavBar({super.key, this.currentIndex = 0, this.onTap});

  static String getTitle(int index) {
    switch (index) {
      case 0:
        return 'Dashboard';
      case 1:
        return 'Inventory';
      case 2:
        return 'Transactions';
      default:
        return 'Dashboard';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      elevation: 0,
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.blueAccent,
      unselectedItemColor: AppColors.neutralGray,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      type: BottomNavigationBarType.fixed,
      items: [
        _buildNavItem(Icons.dashboard_outlined, 'Dashboard', currentIndex == 0),
        _buildNavItem(
          Icons.inventory_2_outlined,
          'Inventory',
          currentIndex == 1,
        ),
        _buildNavItem(
          Icons.receipt_long_outlined,
          'Transactions',
          currentIndex == 2,
        ),
      ],
    );
  }

  BottomNavigationBarItem _buildNavItem(
    IconData icon,
    String label,
    bool isSelected,
  ) {
    return BottomNavigationBarItem(
      icon: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 0),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: isSelected ? AppColors.blueAccent : AppColors.lightGray,
              width: 5,
            ),
          ),
        ),
        child: Column(children: [const SizedBox(height: 8), Icon(icon)]),
      ),
      label: label,
    );
  }
}
