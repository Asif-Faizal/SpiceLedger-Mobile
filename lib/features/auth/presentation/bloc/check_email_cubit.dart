import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/check_email_usecase.dart';

enum CheckEmailStatus { initial, loading, success, failure }

class CheckEmailState extends Equatable {
  final String email;
  final String? emailError;
  final bool isValid;
  final bool showErrors;
  final CheckEmailStatus status;
  final String? errorMessage;
  final bool? emailExists;

  const CheckEmailState({
    this.email = '',
    this.emailError = 'Email is required',
    this.isValid = false,
    this.showErrors = false,
    this.status = CheckEmailStatus.initial,
    this.errorMessage,
    this.emailExists,
  });

  CheckEmailState copyWith({
    String? email,
    String? Function()? emailError,
    bool? isValid,
    bool? showErrors,
    CheckEmailStatus? status,
    String? errorMessage,
    bool? emailExists,
  }) {
    return CheckEmailState(
      email: email ?? this.email,
      emailError: emailError != null ? emailError() : this.emailError,
      isValid: isValid ?? this.isValid,
      showErrors: showErrors ?? this.showErrors,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      emailExists: emailExists ?? this.emailExists,
    );
  }

  @override
  List<Object?> get props => [
    email,
    emailError,
    isValid,
    showErrors,
    status,
    errorMessage,
    emailExists,
  ];
}

@injectable
class CheckEmailCubit extends Cubit<CheckEmailState> {
  final CheckEmailUseCase checkEmailUseCase;

  CheckEmailCubit(this.checkEmailUseCase) : super(const CheckEmailState());

  void setEmail(String value) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    final isValid = emailRegex.hasMatch(value);

    emit(
      state.copyWith(
        email: value,
        isValid: isValid,
        status: CheckEmailStatus.initial,
        emailExists: null,
        emailError: () => isValid
            ? null
            : (value.trim().isEmpty
                  ? 'Email is required'
                  : 'Please enter a valid email address'),
      ),
    );
  }

  void submit() async {
    emit(state.copyWith(showErrors: true));
    if (state.isValid) {
      emit(state.copyWith(status: CheckEmailStatus.loading));
      final result = await checkEmailUseCase(state.email);
      result.fold(
        (failure) => emit(
          state.copyWith(
            status: CheckEmailStatus.failure,
            errorMessage: failure.message,
          ),
        ),
        (entity) => emit(
          state.copyWith(
            status: CheckEmailStatus.success,
            emailExists: entity.exists,
          ),
        ),
      );
    }
  }
}
