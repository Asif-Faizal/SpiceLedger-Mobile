import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/components/buttons.dart';
import '../../../admin/presentation/pages/admin_dashboard_page.dart';
import '../../../inventory/presentation/pages/inventory_page.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/login_form_cubit.dart';
import 'register_page.dart';
import '../../../../core/theme/components/snackbars.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginFormCubit(),
      child: Scaffold(
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              authenticated: (user) {
                showSuccessSnackbar(context, 'Login Successful!');
                if (user.isAdmin) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const AdminDashboardPage()),
                  );
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const InventoryPage()),
                  );
                }
              },
              failure: (message) {
                showErrorSnackbar(context, message);
              },
              orElse: () {},
            );
          },
          child: Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Log in', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 6),
                  Text(
                    'Welcome back. Please enter your details.',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.neutralGray),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    onChanged: (v) => context.read<LoginFormCubit>().setEmail(v),
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'user@company.com',
                    ),
                  ),
                  const SizedBox(height: 12),
                  BlocBuilder<LoginFormCubit, LoginFormState>(
                    builder: (context, form) {
                      return TextField(
                        obscureText: form.obscurePassword,
                        onChanged: (v) => context.read<LoginFormCubit>().setPassword(v),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(form.obscurePassword ? Icons.visibility_off : Icons.visibility, size: 18),
                            onPressed: () => context.read<LoginFormCubit>().toggleObscure(),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Forgot password?'),
                    ),
                  ),
                  const Spacer(),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => const Center(child: CircularProgressIndicator()),
                        orElse: () {
                          final form = context.read<LoginFormCubit>().state;
                          return PrimaryButton(
                            label: 'Log in',
                            trailingIcon: Icons.arrow_forward,
                            onPressed: () {
                              context.read<AuthBloc>().add(
                                    AuthEvent.login(
                                      form.email,
                                      form.password,
                                    ),
                                  );
                            },
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextLinkButton(
                        label: 'Create Account',
                        expanded: false,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlocProvider.value(
                                value: context.read<AuthBloc>(),
                                child: const RegisterPage(),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodySmall,
                      children: [
                        const TextSpan(text: 'By logging in, you agree to the '),
                        TextSpan(
                          text: 'Terms of Service',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Theme.of(context).colorScheme.primary),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        const TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Theme.of(context).colorScheme.primary),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        const TextSpan(text: '.'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
