import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.profileFetched() = _ProfileFetched;
  const factory ProfileEvent.updateProfileRequested(String name, String email) =
      _UpdateProfileRequested;
  const factory ProfileEvent.logoutRequested() = _LogoutRequested;
}
