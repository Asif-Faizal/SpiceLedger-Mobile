import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/components/buttons.dart';
import '../../presentation/bloc/onboarding_cubit.dart';
import '../../../auth/presentation/pages/login_page.dart';
import '../../../auth/presentation/pages/register_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: BlocBuilder<OnboardingCubit, int>(
        builder: (context, index) {
          final cubit = context.read<OnboardingCubit>();
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        Expanded(child: _ProgressBar(current: index, total: 3)),
                        TextButton(
                          onPressed: () => cubit.navigateTo(2),
                          child: const Text('Skip'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: cubit.controller,
                      onPageChanged: (i) => context.read<OnboardingCubit>().setIndex(i),
                      itemCount: 3,
                      itemBuilder: (context, i) {
                        final current = context.watch<OnboardingCubit>().state;
                        final active = i == current;
                        final Widget child = switch (i) {
                          0 => const _PageTrackInventory(),
                          1 => const _PageProfitLoss(),
                          _ => const _PageBuySellAnalyze(),
                        };
                        return AnimatedSwitcher(
                          duration: const Duration(milliseconds: 250),
                          switchInCurve: Curves.easeOut,
                          switchOutCurve: Curves.easeIn,
                          child: AnimatedScale(
                            scale: active ? 1.0 : 0.98,
                            duration: const Duration(milliseconds: 250),
                            child: AnimatedOpacity(
                              opacity: active ? 1.0 : 0.6,
                              duration: const Duration(milliseconds: 250),
                              child: child,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ProgressBar extends StatelessWidget {
  final int current;
  final int total;
  const _ProgressBar({required this.current, required this.total});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(total, (i) {
        final active = i <= current;
        return Expanded(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            height: 4,
            margin: EdgeInsets.only(right: i == total - 1 ? 0 : 8),
            decoration: BoxDecoration(
              color: active ? AppColors.blueAccent : AppColors.outline,
              borderRadius: BorderRadius.zero,
            ),
          ),
        );
      }),
    );
  }
}

class _Card extends StatelessWidget {
  final Widget child;
  const _Card({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.outline),
      ),
      child: child,
    );
  }
}

class _HeroIcon extends StatelessWidget {
  final IconData icon;
  const _HeroIcon({required this.icon});
  @override
  Widget build(BuildContext context) {
    return _Card(
      child: SizedBox(
        height: 180,
        child: Center(
          child: Container(
            width: 84,
            height: 84,
            decoration: BoxDecoration(
              color: AppColors.lightGray,
              border: Border.all(color: AppColors.outline),
            ),
            child: Icon(icon, color: AppColors.blueAccent, size: 36),
          ),
        ),
      ),
    );
  }
}

class _Bullet extends StatelessWidget {
  final String text;
  const _Bullet(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: AppColors.blueAccent, size: 18),
          const SizedBox(width: 10),
          Expanded(
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}

class _SplitColumn extends StatelessWidget {
  final Widget top;
  final Widget bottom;
  const _SplitColumn({required this.top, required this.bottom});
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [top, bottom],
      ),
    );
  }
}

class _PageTrackInventory extends StatelessWidget {
  const _PageTrackInventory();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: _SplitColumn(
        top: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _HeroIcon(icon: Icons.inventory_2_outlined),
            const SizedBox(height: 24),
            Text('Track Your Spice Inventory', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(
              'Monitor stock levels, calculate valuation in real-time, and maintain precise control over your supply chain data.',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.neutralGray),
            ),
          ],
        ),
        bottom: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryButton(
              label: 'Get Started',
              trailingIcon: Icons.arrow_forward,
              onPressed: () => context.read<OnboardingCubit>().navigateTo(1),
            ),
            const SizedBox(height: 8),
            InkWell(
              onTap: () => context.read<OnboardingCubit>().navigateTo(1),
              child: Text(
                'Protected by enterprise-grade encryption',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PageProfitLoss extends StatelessWidget {
  const _PageProfitLoss();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: _SplitColumn(
        top: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _HeroIcon(icon: Icons.insert_chart_outlined_rounded),
            const SizedBox(height: 24),
            Text('Understand Profit & Loss', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(
              'Track your spice inventory against real-time global market prices. Gain instant clarity on your margins, cost of goods sold, and net profitability per trade.',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.neutralGray),
            ),
            const SizedBox(height: 16),
            const _Bullet('Real-time Margin Analysis'),
            const _Bullet('COGS Calculation'),
            const _Bullet('Automated Ledger Updates'),
          ],
        ),
        bottom: Column(
          children: [
            PrimaryButton(
              label: 'Continue',
              trailingIcon: Icons.arrow_forward,
              onPressed: () => context.read<OnboardingCubit>().navigateTo(2),
            ),
            const SizedBox(height: 8),
            Center(
              child: TextLinkButton(
                label: 'Learn more about our metrics',
                onPressed: () => context.read<OnboardingCubit>().navigateTo(2),
                trailingIcon: Icons.open_in_new,
                expanded: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PageBuySellAnalyze extends StatelessWidget {
  const _PageBuySellAnalyze();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: _SplitColumn(
        top: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _HeroIcon(icon: Icons.stacked_line_chart),
            const SizedBox(height: 24),
            Text('Buy, Sell & Analyze', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Precision Spice Inventory Management', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 8),
            Text(
              'Gain total control over your inventory data. Monitor market fluctuations, manage stock levels, and execute trades with enterprise‑grade analytics.',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.neutralGray),
            ),
          ],
        ),
        bottom: Column(
          children: [
            PrimaryButton(
              label: 'Create Account',
              trailingIcon: Icons.add,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterPage()));
              },
            ),
            const SizedBox(height: 10),
            SecondaryButton(
              label: 'User Login',
              trailingIcon: Icons.arrow_forward,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginPage()));
              },
            ),
            const SizedBox(height: 10),
            TextLinkButton(
              label: 'Admin Login',
              trailingIcon: Icons.arrow_forward,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginPage()));
              },
            ),
            const SizedBox(height: 24),
            Center(
              child: Text('v2.4.0 • Authorized Use Only', style: Theme.of(context).textTheme.bodySmall),
            ),
          ],
        ),
      ),
    );
  }
}
