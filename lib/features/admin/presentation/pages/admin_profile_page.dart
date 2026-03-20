import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../auth/presentation/bloc/profile/profile_bloc.dart';
import '../../../auth/presentation/bloc/profile/profile_event.dart';
import '../../../auth/presentation/bloc/profile/profile_state.dart';
import '../../../onboarding/presentation/pages/splash_screen.dart';

class AdminProfilePage extends StatelessWidget {
  const AdminProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = getIt<ProfileBloc>();
        getIt<EncryptedStorage>().read('user_id').then((userId) {
          if (userId != null) {
            bloc.add(ProfileEvent.profileFetched(userId));
          }
        });
        return bloc;
      },
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Profile')),
      body: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.maybeWhen(
            logoutSuccess: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const SplashScreen()),
                (route) => false,
              );
            },
            orElse: () {},
          );
        },
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              failure: (message) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Error: $message'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        getIt<EncryptedStorage>().read('user_id').then((
                          userId,
                        ) {
                          if (userId != null &&
                              userId.isNotEmpty &&
                              context.mounted) {
                            context.read<ProfileBloc>().add(
                              ProfileEvent.profileFetched(userId),
                            );
                          }
                        });
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
              success: (user) => _buildProfileBody(context, user, false),
              logoutLoading: (user) => _buildProfileBody(context, user, true),
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }

  Widget _buildProfileBody(BuildContext context, dynamic user, bool isLoggingOut) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 32),
          Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: AppColors.lightGray,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.person,
                size: 64,
                color: AppColors.neutralGray,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(user.name, style: textTheme.titleLarge),
          Text(
            user.id,
            style: textTheme.bodySmall?.copyWith(color: AppColors.neutralGray),
          ),
          const SizedBox(height: 32),
          const Divider(),
          _buildProfileItem(
            context,
            icon: Icons.badge_outlined,
            label: 'Role',
            value: user.userType.toString().split('.').last.toUpperCase(),
          ),
          _buildProfileItem(
            context,
            icon: Icons.mail,
            label: 'E-Mail',
            value: user.email,
          ),
          const Divider(),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                _buildMenuButton(
                  context,
                  icon: Icons.security_outlined,
                  label: 'Security Settings',
                ),
                const SizedBox(height: 8),
                _buildMenuButton(
                  context,
                  icon: Icons.notifications_outlined,
                  label: 'Notification Preferences',
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      context.read<ProfileBloc>().add(
                        const ProfileEvent.logoutRequested(),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.danger,
                      side: const BorderSide(color: AppColors.danger),
                    ),
                    child: Text(isLoggingOut ? 'Logging Out..' : 'LOG OUT'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildProfileItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.lightGray)),
      ),
      child: Row(
        children: [
          Icon(icon, size: 24),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: textTheme.labelSmall),
              const SizedBox(height: 2),
              Text(value, style: textTheme.bodyLarge),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenuButton(
    BuildContext context, {
    required IconData icon,
    required String label,
  }) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Icon(icon, size: 22),
            const SizedBox(width: 16),
            Expanded(
              child: Text(label, style: Theme.of(context).textTheme.bodyMedium),
            ),
            const Icon(Icons.chevron_right, size: 20),
          ],
        ),
      ),
    );
  }
}
