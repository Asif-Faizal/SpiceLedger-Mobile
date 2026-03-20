import 'package:hive_ce/hive.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:spice_ledger/features/auth/domain/entities/user_entity.dart';
import '../../../../core/storage/secure_storage.dart';

sealed class SplashState {
  const SplashState();
}

final class SplashInitial extends SplashState {
  const SplashInitial();
}

final class SplashAnimating extends SplashState {
  const SplashAnimating();
}

final class SplashAdminAuthenticated extends SplashState {
  const SplashAdminAuthenticated();
}

final class SplashMerchantAuthenticated extends SplashState {
  const SplashMerchantAuthenticated();
}

final class SplashUnauthenticated extends SplashState {
  const SplashUnauthenticated();
}

final class SplashOnboarding extends SplashState {
  const SplashOnboarding();
}

@injectable
class SplashCubit extends Cubit<SplashState> {
  final EncryptedStorage _storage;
  final Box _cacheBox;

  SplashCubit(this._storage, this._cacheBox) : super(const SplashInitial());

  Future<void> init() async {
    emit(const SplashAnimating());

    // Total animation time is 3 seconds (2 for entry, 1 for pause)
    await Future.delayed(const Duration(seconds: 3));

    final hasSeenOnboarding = _cacheBox.get(
      'has_seen_onboarding',
      defaultValue: false,
    );
    if (!hasSeenOnboarding) {
      emit(const SplashOnboarding());
      return;
    }

    final token = await _storage.read('access_token');
    final userTypeStr = await _storage.read('user_type');

    if (token != null && userTypeStr != null) {
      final userType = UserType.values.firstWhere(
        (e) => e.name == userTypeStr,
        orElse: () => UserType.merchant,
      );

      if (userType == UserType.admin) {
        emit(const SplashAdminAuthenticated());
      } else {
        emit(const SplashMerchantAuthenticated());
      }
    } else {
      emit(const SplashUnauthenticated());
    }
  }
}
