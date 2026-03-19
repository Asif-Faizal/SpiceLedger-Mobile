import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/components/buttons.dart';
import '../../../admin/presentation/pages/admin_dashboard_page.dart';
import '../../../inventory/presentation/pages/inventory_page.dart';
import '../bloc/login/login_bloc.dart';
import '../cubit/login_form_cubit.dart';
import '../../domain/entities/user_entity.dart';
import 'check_email_page.dart';
import '../../../../core/theme/components/snackbars.dart';

class LoginPage extends StatelessWidget {
  final String? initialEmail;
  const LoginPage({super.key, this.initialEmail});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LoginFormCubit()..setEmail(initialEmail ?? ''),
        ),
        BlocProvider(
          create: (_) => getIt<LoginBloc>(),
        ),
      ],
      child: _LoginView(initialEmail: initialEmail),
    );
  }
}

class _LoginView extends StatefulWidget {
  final String? initialEmail;
  const _LoginView({this.initialEmail});

  @override
  State<_LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> {
  late final TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: widget.initialEmail ?? '');
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (user) {
              showSuccessSnackbar(context, 'Login Successful!');
              if (user.userType == UserType.admin) {
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
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.neutralGray,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _emailController,
                  readOnly: true,
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
                      onChanged: (v) =>
                          context.read<LoginFormCubit>().setPassword(v),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            form.obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: 18,
                          ),
                          onPressed: () =>
                              context.read<LoginFormCubit>().toggleObscure(),
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
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    final isLoading = state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    );
                    return PrimaryButton(
                      label: isLoading ? 'Logging in...' : 'Log in',
                      trailingIcon: isLoading ? null : Icons.arrow_forward,
                      onPressed: isLoading
                          ? null
                          : () {
                              final form = context.read<LoginFormCubit>().state;
                              context.read<LoginBloc>().add(
                                    LoginEvent.loginSubmitted(
                                      form.email,
                                      form.password,
                                    ),
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
                            builder: (context) => CheckEmailPage(),
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
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      const TextSpan(text: ' and '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
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
    );
  }
}
