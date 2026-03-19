part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.registerSubmitted(
    String name,
    String email,
    String password,
  ) = _RegisterSubmitted;
}
