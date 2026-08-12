import 'package:flutter/material.dart';
import 'package:spice_ledger/features/onboarding/presentation/pages/splash_screen.dart';
import 'package:spice_ledger/main.dart';
import '../storage/secure_storage.dart';

/// Clears tokens and returns the user to splash when the session is unusable.
class SessionForceLogout {
  SessionForceLogout._();

  static bool _inProgress = false;

  /// Returns true if a logout was performed.
  static Future<bool> run(EncryptedStorage storage) async {
    if (_inProgress) return false;

    final token = await storage.read('access_token');
    if (token == null || token.isEmpty) return false;

    _inProgress = true;
    try {
      await storage.deleteAll();
      final navigator = navigatorKey.currentState;
      if (navigator != null) {
        navigator.pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const SplashScreen()),
          (_) => false,
        );
      }
      return true;
    } finally {
      Future<void>.delayed(const Duration(seconds: 2), () {
        _inProgress = false;
      });
    }
  }
}
