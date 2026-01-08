import 'package:flutter/material.dart';
import '../app_theme.dart';

enum CarbonSnackbarType { success, error, info }

void showSuccessSnackbar(BuildContext context, String message, {Duration? duration}) {
  _showCarbonSnackbar(context, message, CarbonSnackbarType.success, duration: duration);
}

void showErrorSnackbar(BuildContext context, String message, {Duration? duration}) {
  _showCarbonSnackbar(context, message, CarbonSnackbarType.error, duration: duration);
}

void showInfoSnackbar(BuildContext context, String message, {Duration? duration}) {
  _showCarbonSnackbar(context, message, CarbonSnackbarType.info, duration: duration);
}

void _showCarbonSnackbar(
  BuildContext context,
  String message,
  CarbonSnackbarType type, {
  Duration? duration,
}) {
  final messenger = ScaffoldMessenger.of(context);
  messenger.hideCurrentSnackBar();
  final Color accent = switch (type) {
    CarbonSnackbarType.success => AppColors.success,
    CarbonSnackbarType.error => AppColors.danger,
    CarbonSnackbarType.info => AppColors.blueAccent,
  };
  final IconData icon = switch (type) {
    CarbonSnackbarType.success => Icons.check_circle,
    CarbonSnackbarType.error => Icons.error_outline,
    CarbonSnackbarType.info => Icons.info_outline,
  };

  final content = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, color: accent, size: 18),
      const SizedBox(width: 8),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border(left: BorderSide(color: accent, width: 3)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Text(
            message,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
      IconButton(
        onPressed: () => messenger.hideCurrentSnackBar(),
        icon: const Icon(Icons.close, size: 18, color: AppColors.neutralGray),
        visualDensity: VisualDensity.compact,
      ),
    ],
  );

  messenger.showSnackBar(
    SnackBar(
      content: content,
      duration: duration ?? const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(12),
      elevation: 0,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      backgroundColor: AppColors.lightGray,
    ),
  );
}
