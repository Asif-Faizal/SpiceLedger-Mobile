part of 'admin_bloc.dart';

@freezed
class AdminState with _$AdminState {
  const factory AdminState.initial() = _Initial;
  const factory AdminState.loading() = _Loading;
  const factory AdminState.loaded(UserStats stats) = _Loaded;
  const factory AdminState.success(String message) = _Success;
  const factory AdminState.failure(String message) = _Failure;
}
