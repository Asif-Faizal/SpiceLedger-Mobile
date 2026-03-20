import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/get_profile_usecase.dart';
import '../../../domain/usecases/logout_usecase.dart';
import 'profile_event.dart';
import 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileUseCase getProfileUseCase;
  final LogoutUseCase logoutUseCase;

  ProfileBloc(this.getProfileUseCase, this.logoutUseCase)
    : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(
        profileFetched: () async {
          emit(const ProfileState.loading());
          final result = await getProfileUseCase();
          result.fold(
            (failure) => emit(ProfileState.failure(failure.message)),
            (user) => emit(ProfileState.success(user)),
          );
        },
        logoutRequested: () async {
          final user = state.maybeWhen(
            success: (user) => user,
            logoutLoading: (user) => user,
            orElse: () => null,
          );

          if (user != null) {
            emit(ProfileState.logoutLoading(user));
          } else {
            emit(const ProfileState.loading());
          }

          final result = await logoutUseCase();
          result.fold(
            (failure) => emit(ProfileState.failure(failure.message)),
            (_) => emit(const ProfileState.logoutSuccess()),
          );
        },
      );
    });
  }
}
