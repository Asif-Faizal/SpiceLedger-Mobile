import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterFormState extends Equatable {
  final String name;
  final String email;
  final String password;
  final String confirm;
  final bool obscurePassword;
  final bool obscureConfirm;

  const RegisterFormState({
    this.name = '',
    this.email = '',
    this.password = '',
    this.confirm = '',
    this.obscurePassword = true,
    this.obscureConfirm = true,
  });

  RegisterFormState copyWith({
    String? name,
    String? email,
    String? password,
    String? confirm,
    bool? obscurePassword,
    bool? obscureConfirm,
  }) {
    return RegisterFormState(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      confirm: confirm ?? this.confirm,
      obscurePassword: obscurePassword ?? this.obscurePassword,
      obscureConfirm: obscureConfirm ?? this.obscureConfirm,
    );
  }

  @override
  List<Object?> get props => [name, email, password, confirm, obscurePassword, obscureConfirm];
}

class RegisterFormCubit extends Cubit<RegisterFormState> {
  RegisterFormCubit() : super(const RegisterFormState());

  void setName(String value) => emit(state.copyWith(name: value));
  void setEmail(String value) => emit(state.copyWith(email: value));
  void setPassword(String value) => emit(state.copyWith(password: value));
  void setConfirm(String value) => emit(state.copyWith(confirm: value));
  void toggleObscurePassword() => emit(state.copyWith(obscurePassword: !state.obscurePassword));
  void toggleObscureConfirm() => emit(state.copyWith(obscureConfirm: !state.obscureConfirm));
  void clear() => emit(const RegisterFormState());
}
