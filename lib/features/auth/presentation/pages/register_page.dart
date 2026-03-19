import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/components/buttons.dart';
import '../bloc/register/register_bloc.dart';
import '../cubit/register_form_cubit.dart';
import 'check_email_page.dart';
import '../../../../core/theme/components/snackbars.dart';
import 'login_page.dart';

class RegisterPage extends StatelessWidget {
  final String? initialEmail;
  const RegisterPage({super.key, this.initialEmail});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => RegisterFormCubit()..setEmail(initialEmail ?? ''),
        ),
        BlocProvider(
          create: (_) => getIt<RegisterBloc>(),
        ),
      ],
      child: _RegisterView(initialEmail: initialEmail),
    );
  }
}

class _RegisterView extends StatefulWidget {
  final String? initialEmail;
  const _RegisterView({this.initialEmail});

  @override
  State<_RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<_RegisterView> {
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
      appBar: AppBar(),
      body: BlocListener<RegisterBloc, RegisterState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (user) {
              showSuccessSnackbar(context, 'Account created successfully!');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => LoginPage(initialEmail: user.email),
                ),
              );
            },
            failure: (message) {
              showErrorSnackbar(context, message);
            },
            orElse: () {},
          );
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Join the Spice Trading Network',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 6),
                Text(
                  'Create your professional profile to access real-time inventory and global market data.',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.neutralGray,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  onChanged: (v) =>
                      context.read<RegisterFormCubit>().setName(v),
                  decoration: const InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'John Doe',
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _emailController,
                  readOnly: true,
                  onChanged: (v) =>
                      context.read<RegisterFormCubit>().setEmail(v),
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'name@company.com',
                  ),
                ),
                const SizedBox(height: 12),
                BlocBuilder<RegisterFormCubit, RegisterFormState>(
                  builder: (context, form) {
                    return TextField(
                      obscureText: form.obscurePassword,
                      onChanged: (v) =>
                          context.read<RegisterFormCubit>().setPassword(v),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Create a password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            form.obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: 18,
                          ),
                          onPressed: () => context
                              .read<RegisterFormCubit>()
                              .toggleObscurePassword(),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.info,
                      size: 16,
                      color: AppColors.neutralGray,
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        'Must be at least 8 characters with 1 symbol',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                BlocBuilder<RegisterFormCubit, RegisterFormState>(
                  builder: (context, form) {
                    return TextField(
                      obscureText: form.obscureConfirm,
                      onChanged: (v) =>
                          context.read<RegisterFormCubit>().setConfirm(v),
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        hintText: 'Re-enter password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            form.obscureConfirm
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: 18,
                          ),
                          onPressed: () => context
                              .read<RegisterFormCubit>()
                              .toggleObscureConfirm(),
                        ),
                      ),
                    );
                  },
                ),
                const Spacer(),
                BlocBuilder<RegisterBloc, RegisterState>(
                  builder: (context, state) {
                    final isLoading = state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    );
                    return PrimaryButton(
                      label: isLoading ? 'Creating Account...' : 'Create Account',
                      trailingIcon: isLoading ? null : Icons.arrow_forward,
                      onPressed: isLoading
                          ? null
                          : () {
                              final form =
                                  context.read<RegisterFormCubit>().state;
                              context.read<RegisterBloc>().add(
                                    RegisterEvent.registerSubmitted(
                                      form.name,
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
                      'Already have an account?',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextLinkButton(
                      label: 'Log in',
                      expanded: false,
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => CheckEmailPage()),
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
                      const TextSpan(
                        text: 'By creating an account, you agree to our ',
                      ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
