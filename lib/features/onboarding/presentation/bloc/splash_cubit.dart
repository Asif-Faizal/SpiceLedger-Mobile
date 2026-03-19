import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
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

final class SplashAuthenticated extends SplashState {
  const SplashAuthenticated();
}

final class SplashUnauthenticated extends SplashState {
  const SplashUnauthenticated();
}

@injectable
class SplashCubit extends Cubit<SplashState> {
  final EncryptedStorage _storage;

  SplashCubit(this._storage) : super(const SplashInitial());

  Future<void> init() async {
    emit(const SplashAnimating());

    // Total animation time is 3 seconds (2 for entry, 1 for pause)
    await Future.delayed(const Duration(seconds: 3));

    final token = await _storage.read('auth_token');
    if (token != null) {
      emit(const SplashAuthenticated());
    } else {
      emit(const SplashUnauthenticated());
    }
  }
}
