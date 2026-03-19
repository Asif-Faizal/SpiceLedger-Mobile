import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterFormState extends Equatable {
  final String name;
  final String email;
  final String password;
  final String confirm;
  final bool obscurePassword;
  final bool obscureConfirm;
  final bool showErrors;

  const RegisterFormState({
    this.name = '',
    this.email = '',
    this.password = '',
    this.confirm = '',
    this.obscurePassword = true,
    this.obscureConfirm = true,
    this.showErrors = false,
  });

  bool get isPasswordValid => password.length >= 8 && RegExp(r'[!@#\$&*~]').hasMatch(password);
  bool get isConfirmValid => confirm == password && confirm.isNotEmpty;
  bool get isNameValid => name.trim().isNotEmpty;
  bool get isValid => isNameValid && isPasswordValid && isConfirmValid;

  String? get nameError => isNameValid ? null : 'Name is required';
  String? get passwordError => isPasswordValid ? null : 'Password must be 8+ chars with 1 symbol';
  String? get confirmError => isConfirmValid ? null : 'Passwords do not match';

  RegisterFormState copyWith({
    String? name,
    String? email,
    String? password,
    String? confirm,
    bool? obscurePassword,
    bool? obscureConfirm,
    bool? showErrors,
  }) {
    return RegisterFormState(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      confirm: confirm ?? this.confirm,
      obscurePassword: obscurePassword ?? this.obscurePassword,
      obscureConfirm: obscureConfirm ?? this.obscureConfirm,
      showErrors: showErrors ?? this.showErrors,
    );
  }

  @override
  List<Object?> get props => [
    name,
    email,
    password,
    confirm,
    obscurePassword,
    obscureConfirm,
    showErrors,
  ];
}

class RegisterFormCubit extends Cubit<RegisterFormState> {
  RegisterFormCubit() : super(const RegisterFormState());

  void setName(String value) => emit(state.copyWith(name: value));
  void setEmail(String value) => emit(state.copyWith(email: value));
  void setPassword(String value) => emit(state.copyWith(password: value));
  void setConfirm(String value) => emit(state.copyWith(confirm: value));
  void toggleObscurePassword() =>
      emit(state.copyWith(obscurePassword: !state.obscurePassword));
  void toggleObscureConfirm() =>
      emit(state.copyWith(obscureConfirm: !state.obscureConfirm));
  void setShowErrors(bool value) => emit(state.copyWith(showErrors: value));
  void clear() => emit(const RegisterFormState());
}
