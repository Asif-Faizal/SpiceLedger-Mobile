import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/components/buttons.dart';
import '../../../../core/theme/components/logo.dart';
import '../../../../core/theme/components/snackbars.dart';
import '../cubit/check_email_cubit.dart';
import 'login_page.dart';
import 'register_page.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CheckEmailCubit>(),
      child: const _CheckEmailView(),
    );
  }
}

class _CheckEmailView extends StatelessWidget {
  const _CheckEmailView();

  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckEmailCubit, CheckEmailState>(
      listener: (context, state) {
        if (state.status == CheckEmailStatus.success) {
          if (state.emailExists == true) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => LoginPage(initialEmail: state.email),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => RegisterPage(initialEmail: state.email),
              ),
            );
          }
        } else if (state.status == CheckEmailStatus.failure) {
          showErrorSnackbar(context, state.errorMessage ?? 'An error occurred');
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.nearBlack),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: SpiceLogo(
                    size: 80,
                    animate: true,
                    color: AppColors.blueAccent,
                  ),
                ),
              ),
              Text(
                'What\'s your email?',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.nearBlack,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'We\'ll use this to see if you have an account or if we need to create one.',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: AppColors.neutralGray),
              ),
              const SizedBox(height: 32),
              BlocBuilder<CheckEmailCubit, CheckEmailState>(
                builder: (context, state) {
                  return TextField(
                    onChanged: (v) =>
                        context.read<CheckEmailCubit>().setEmail(v),
                    keyboardType: TextInputType.emailAddress,
                    enabled: state.status != CheckEmailStatus.loading,
                    decoration: InputDecoration(
                      labelText: 'Email address',
                      hintText: 'name@company.com',
                      errorText: state.showErrors ? state.emailError : null,
                      prefixIcon: const Icon(Icons.email_outlined),
                    ),
                  );
                },
              ),
              const Spacer(),
              BlocBuilder<CheckEmailCubit, CheckEmailState>(
                builder: (context, state) {
                  return PrimaryButton(
                    label: state.status == CheckEmailStatus.loading
                        ? 'Checking...'
                        : 'Continue',
                    trailingIcon: state.status == CheckEmailStatus.loading
                        ? null
                        : Icons.arrow_forward,
                    onPressed: state.status == CheckEmailStatus.loading
                        ? null
                        : () {
                            context.read<CheckEmailCubit>().submit();
                          },
                  );
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
