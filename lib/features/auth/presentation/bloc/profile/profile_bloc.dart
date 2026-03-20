import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/get_profile_usecase.dart';
import 'profile_event.dart';
import 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileUseCase getProfileUseCase;

  ProfileBloc(this.getProfileUseCase) : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      emit(const ProfileState.loading());
      final result = await getProfileUseCase(event.userId);
      result.fold(
        (failure) => emit(ProfileState.failure(failure.message)),
        (user) => emit(ProfileState.success(user)),
      );
    });
  }
}
