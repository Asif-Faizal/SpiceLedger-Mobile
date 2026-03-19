import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../app_theme.dart';

class SpiceLogo extends StatelessWidget {
  final double size;
  final bool animate;
  final Color? color;

  const SpiceLogo({
    super.key,
    this.size = 80,
    this.animate = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final logoColor = color ?? AppColors.white;
    if (animate) {
      return _AnimatedLogo(size: size, color: logoColor);
    }
    return _StaticLogo(size: size, color: logoColor);
  }
}

class _StaticLogo extends StatelessWidget {
  final double size;
  final Color color;
  const _StaticLogo({required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    const dotCoords = [
      math.Point(1, 0),
      math.Point(2, 0),
      math.Point(0, 1),
      math.Point(1, 1),
      math.Point(2, 1),
      math.Point(0, 2),
      math.Point(1, 2),
    ];

    return CustomPaint(
      size: Size(size, size),
      painter: _StaticLogoPainter(coords: dotCoords, color: color),
    );
  }
}

class _StaticLogoPainter extends CustomPainter {
  final List<math.Point<int>> coords;
  final Color color;
  _StaticLogoPainter({required this.coords, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final cellWidth = size.width / 3;
    final cellHeight = size.height / 3;
    final dotRadius = math.min(cellWidth, cellHeight) * 0.35;

    for (var coord in coords) {
      final x = coord.x * cellWidth + cellWidth / 2;
      final y = coord.y * cellHeight + cellHeight / 2;
      canvas.drawCircle(Offset(x, y), dotRadius, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class _AnimatedLogo extends StatefulWidget {
  final double size;
  final Color color;
  const _AnimatedLogo({required this.size, required this.color});

  @override
  State<_AnimatedLogo> createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<_AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const dotCoords = [
      math.Point(1, 0),
      math.Point(2, 0),
      math.Point(0, 1),
      math.Point(1, 1),
      math.Point(2, 1),
      math.Point(0, 2),
      math.Point(1, 2),
    ];

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: Size(widget.size, widget.size),
          painter: _AnimatedLogoPainter(
            coords: dotCoords,
            progress: _controller.value,
            color: widget.color,
          ),
        );
      },
    );
  }
}

class _AnimatedLogoPainter extends CustomPainter {
  final List<math.Point<int>> coords;
  final double progress;
  final Color color;

  _AnimatedLogoPainter({
    required this.coords,
    required this.progress,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color.withValues(alpha: progress)
      ..style = PaintingStyle.fill;

    final cellWidth = size.width / 3;
    final cellHeight = size.height / 3;
    final dotRadius = math.min(cellWidth, cellHeight) * 0.35;

    final curvedProgress = Curves.easeOutBack.transform(progress);

    for (var coord in coords) {
      final targetX = coord.x * cellWidth + cellWidth / 2;
      final targetY = coord.y * cellHeight + cellHeight / 2;

      // Scale from center of dot
      canvas.drawCircle(
        Offset(targetX, targetY),
        dotRadius * curvedProgress,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_AnimatedLogoPainter oldDelegate) =>
      oldDelegate.progress != progress;
}
