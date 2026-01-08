import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginFormState extends Equatable {
  final String email;
  final String password;
  final bool obscurePassword;

  const LoginFormState({
    this.email = '',
    this.password = '',
    this.obscurePassword = true,
  });

  LoginFormState copyWith({
    String? email,
    String? password,
    bool? obscurePassword,
  }) {
    return LoginFormState(
      email: email ?? this.email,
      password: password ?? this.password,
      obscurePassword: obscurePassword ?? this.obscurePassword,
    );
  }

  @override
  List<Object?> get props => [email, password, obscurePassword];
}

class LoginFormCubit extends Cubit<LoginFormState> {
  LoginFormCubit() : super(const LoginFormState());

  void setEmail(String value) => emit(state.copyWith(email: value));
  void setPassword(String value) => emit(state.copyWith(password: value));
  void toggleObscure() => emit(state.copyWith(obscurePassword: !state.obscurePassword));
  void clear() => emit(const LoginFormState());
}
