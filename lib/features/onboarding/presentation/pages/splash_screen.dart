import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/di/injection.dart';
import '../../../auth/presentation/pages/check_email_page.dart';
import '../bloc/splash_cubit.dart';
import 'onboarding_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SplashCubit>()..init(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashAuthenticated) {
            // TODO: Navigate to Home Screen
          } else if (state is SplashUnauthenticated) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const CheckEmailPage()),
            );
          } else if (state is SplashOnboarding) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const OnboardingPage()),
            );
          }
        },
        child: const Scaffold(
          backgroundColor: AppColors.blueAccent,
          body: Center(child: AnimatedLogo()),
        ),
      ),
    );
  }
}

class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({super.key});

  @override
  State<AnimatedLogo> createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<LogoDotData> _dots = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    // Define the 7-dot pattern from the image
    const dotCoords = [
      math.Point(1, 0),
      math.Point(2, 0),
      math.Point(0, 1),
      math.Point(1, 1),
      math.Point(2, 1),
      math.Point(0, 2),
      math.Point(1, 2),
    ];

    final random = math.Random();
    for (var coord in dotCoords) {
      // Random start position outside the screen
      final angle = random.nextDouble() * 2 * math.pi;
      final distance = 400.0 + random.nextDouble() * 200;
      final startOffset = Offset(
        math.cos(angle) * distance,
        math.sin(angle) * distance,
      );

      _dots.add(
        LogoDotData(
          gridPos: coord,
          startOffset: startOffset,
          delay: random.nextDouble() * 0.4, // Staggered start
        ),
      );
    }

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: const Size(120, 120),
          painter: LogoPainter(dots: _dots, progress: _controller.value),
        );
      },
    );
  }
}

class LogoDotData {
  final math.Point<int> gridPos;
  final Offset startOffset;
  final double delay;

  LogoDotData({
    required this.gridPos,
    required this.startOffset,
    required this.delay,
  });
}

class LogoPainter extends CustomPainter {
  final List<LogoDotData> dots;
  final double progress;

  LogoPainter({required this.dots, required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.white
      ..style = PaintingStyle.fill;

    final cellWidth = size.width / 3;
    final cellHeight = size.height / 3;
    final dotRadius = math.min(cellWidth, cellHeight) * 0.35;

    for (var dot in dots) {
      // Calculate local progress for this dot based on its delay
      final dotProgress = ((progress - dot.delay) / (1 - dot.delay)).clamp(
        0.0,
        1.0,
      );

      // Use elasticOut for physics-based springy feel
      final curvedProgress = Curves.elasticOut.transform(dotProgress);

      final targetX = dot.gridPos.x * cellWidth + cellWidth / 2;
      final targetY = dot.gridPos.y * cellHeight + cellHeight / 2;
      final targetOffset = Offset(targetX, targetY);

      // Interpolate between start and target
      final currentOffset = Offset.lerp(
        dot.startOffset,
        targetOffset,
        curvedProgress,
      )!;

      // Add a slight fade in
      paint.color = AppColors.white.withValues(alpha: dotProgress);

      canvas.drawCircle(currentOffset, dotRadius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant LogoPainter oldDelegate) =>
      oldDelegate.progress != progress;
}
