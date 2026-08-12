import 'dart:math' as math;

import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/merchant_dashboard_entity.dart';

class MerchantTrendsPage extends StatefulWidget {
  final List<PnlTrendPointEntity> pnlTrend;
  final List<ActivityTrendPointEntity> activityTrend;
  final int days;

  const MerchantTrendsPage({
    super.key,
    required this.pnlTrend,
    required this.activityTrend,
    required this.days,
  });

  @override
  State<MerchantTrendsPage> createState() => _MerchantTrendsPageState();
}

class _MerchantTrendsPageState extends State<MerchantTrendsPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  int _selectedIndex = -1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this)
      ..addListener(() {
        if (!_tabController.indexIsChanging) {
          setState(() => _selectedIndex = -1);
        }
      });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  double get _periodRealized =>
      widget.pnlTrend.fold(0.0, (sum, p) => sum + p.dailyRealizedPnL);

  double get _periodBuyKg => widget.activityTrend.fold(
        0.0,
        (sum, p) => sum + p.buyQuantity,
      );

  double get _periodSellKg => widget.activityTrend.fold(
        0.0,
        (sum, p) => sum + p.sellQuantity,
      );

  int get _periodTrades => widget.activityTrend.fold(
        0,
        (sum, p) => sum + p.buyCount + p.sellCount,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Performance · ${widget.days}d'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'P&L'),
            Tab(text: 'Activity'),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: Row(
              children: [
                Expanded(
                  child: _SummaryTile(
                    label: 'Period realized',
                    value: '₹${_periodRealized.toStringAsFixed(0)}',
                    color: _periodRealized >= 0
                        ? AppColors.success
                        : AppColors.danger,
                    icon: Icons.trending_up,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _SummaryTile(
                    label: 'Buy / Sell',
                    value:
                        '${_periodBuyKg.toStringAsFixed(0)} / ${_periodSellKg.toStringAsFixed(0)} kg',
                    color: AppColors.blueAccent,
                    icon: Icons.swap_vert,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _SummaryTile(
                    label: 'Trades',
                    value: '$_periodTrades',
                    color: AppColors.neutralGray,
                    icon: Icons.receipt_long_outlined,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _PnLTab(
                  points: widget.pnlTrend,
                  selectedIndex: _selectedIndex,
                  onSelect: (i) => setState(() => _selectedIndex = i),
                ),
                _ActivityTab(
                  points: widget.activityTrend,
                  selectedIndex: _selectedIndex,
                  onSelect: (i) => setState(() => _selectedIndex = i),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SummaryTile extends StatelessWidget {
  final String label;
  final String value;
  final Color color;
  final IconData icon;

  const _SummaryTile({
    required this.label,
    required this.value,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: color,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 9, color: AppColors.neutralGray),
          ),
        ],
      ),
    );
  }
}

class _PnLTab extends StatelessWidget {
  final List<PnlTrendPointEntity> points;
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const _PnLTab({
    required this.points,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    if (points.isEmpty) {
      return const Center(child: Text('No P&L data for this period'));
    }

    final selected = selectedIndex >= 0 && selectedIndex < points.length
        ? points[selectedIndex]
        : null;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Daily realized P&L',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
        ),
        const SizedBox(height: 4),
        const Text(
          'Tap a bar for details · green = profit, red = loss',
          style: TextStyle(fontSize: 11, color: AppColors.neutralGray),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 220,
          child: _PnLBarChart(
            points: points,
            selectedIndex: selectedIndex,
            onSelect: onSelect,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 120,
          child: _CumulativeLineChart(
            points: points,
            selectedIndex: selectedIndex,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Cumulative realized P&L',
          style: TextStyle(fontSize: 11, color: AppColors.neutralGray),
        ),
        if (selected != null) ...[
          const SizedBox(height: 16),
          _DayDetailCard(
            date: _formatDate(selected.date),
            rows: [
              _DetailRow(
                'Daily P&L',
                '₹${selected.dailyRealizedPnL.toStringAsFixed(0)}',
                color: selected.dailyRealizedPnL >= 0
                    ? AppColors.success
                    : AppColors.danger,
              ),
              _DetailRow(
                'Cumulative',
                '₹${selected.cumulativeRealizedPnL.toStringAsFixed(0)}',
              ),
            ],
          ),
        ],
      ],
    );
  }
}

class _ActivityTab extends StatelessWidget {
  final List<ActivityTrendPointEntity> points;
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const _ActivityTab({
    required this.points,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    if (points.isEmpty) {
      return const Center(child: Text('No activity data for this period'));
    }

    final selected = selectedIndex >= 0 && selectedIndex < points.length
        ? points[selectedIndex]
        : null;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Buy vs sell volume',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
        ),
        const SizedBox(height: 4),
        const Text(
          'Tap a day to see trade counts',
          style: TextStyle(fontSize: 11, color: AppColors.neutralGray),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 220,
          child: _ActivityBarChart(
            points: points,
            selectedIndex: selectedIndex,
            onSelect: onSelect,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _LegendDot(color: AppColors.success, label: 'Buy'),
            const SizedBox(width: 16),
            _LegendDot(color: AppColors.danger, label: 'Sell'),
          ],
        ),
        if (selected != null) ...[
          const SizedBox(height: 16),
          _DayDetailCard(
            date: _formatDate(selected.date),
            rows: [
              _DetailRow(
                'Buy',
                '${selected.buyQuantity.toStringAsFixed(1)} kg (${selected.buyCount})',
                color: AppColors.success,
              ),
              _DetailRow(
                'Sell',
                '${selected.sellQuantity.toStringAsFixed(1)} kg (${selected.sellCount})',
                color: AppColors.danger,
              ),
              _DetailRow(
                'Net flow',
                '${(selected.buyQuantity - selected.sellQuantity).toStringAsFixed(1)} kg',
              ),
            ],
          ),
        ],
      ],
    );
  }
}

class _LegendDot extends StatelessWidget {
  final Color color;
  final String label;

  const _LegendDot({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 6),
        Text(label, style: const TextStyle(fontSize: 11)),
      ],
    );
  }
}

class _DayDetailCard extends StatelessWidget {
  final String date;
  final List<_DetailRow> rows;

  const _DayDetailCard({required this.date, required this.rows});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.lightGray,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ...rows.map(
            (row) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    row.label,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.neutralGray,
                    ),
                  ),
                  Text(
                    row.value,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: row.color ?? AppColors.nearBlack,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailRow {
  final String label;
  final String value;
  final Color? color;

  const _DetailRow(this.label, this.value, {this.color});
}

class _PnLBarChart extends StatelessWidget {
  final List<PnlTrendPointEntity> points;
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const _PnLBarChart({
    required this.points,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return CustomPaint(
          size: Size(constraints.maxWidth, constraints.maxHeight),
          painter: _PnLBarChartPainter(
            points: points,
            selectedIndex: selectedIndex,
          ),
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapDown: (details) {
              final index = _barIndexAt(
                details.localPosition.dx,
                constraints.maxWidth,
                points.length,
              );
              if (index != null) onSelect(index);
            },
          ),
        );
      },
    );
  }
}

class _PnLBarChartPainter extends CustomPainter {
  final List<PnlTrendPointEntity> points;
  final int selectedIndex;

  _PnLBarChartPainter({
    required this.points,
    required this.selectedIndex,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (points.isEmpty) return;

    const bottomPad = 28.0;
    const topPad = 12.0;
    final chartH = size.height - bottomPad - topPad;
    final maxAbs = points
            .map((p) => p.dailyRealizedPnL.abs())
            .fold(0.0, math.max)
            .clamp(1.0, double.infinity) *
        1.15;
    final zeroY = topPad + chartH / 2;
    final barW = size.width / points.length * 0.55;
    final gap = size.width / points.length;

    final axisPaint = Paint()
      ..color = AppColors.outline
      ..strokeWidth = 1;
    canvas.drawLine(
      Offset(0, zeroY),
      Offset(size.width, zeroY),
      axisPaint,
    );

    for (var i = 0; i < points.length; i++) {
      final p = points[i];
      final x = gap * i + gap / 2;
      final h = (p.dailyRealizedPnL.abs() / maxAbs) * (chartH / 2);
      final isSelected = i == selectedIndex;
      final color = p.dailyRealizedPnL >= 0
          ? AppColors.success
          : AppColors.danger;

      final rect = p.dailyRealizedPnL >= 0
          ? Rect.fromLTWH(x - barW / 2, zeroY - h, barW, h)
          : Rect.fromLTWH(x - barW / 2, zeroY, barW, h);

      canvas.drawRRect(
        RRect.fromRectAndRadius(
          rect,
          const Radius.circular(3),
        ),
        Paint()..color = color.withValues(alpha: isSelected ? 1 : 0.65),
      );

      if (isSelected) {
        canvas.drawRRect(
          RRect.fromRectAndRadius(rect.inflate(2), const Radius.circular(4)),
          Paint()
            ..color = color.withValues(alpha: 0.25)
            ..style = PaintingStyle.stroke
            ..strokeWidth = 2,
        );
      }

      if (points.length <= 10 || i % 2 == 0 || i == points.length - 1) {
        final label = points[i].date.substring(5);
        final tp = TextPainter(
          text: TextSpan(
            text: label,
            style: const TextStyle(fontSize: 9, color: AppColors.neutralGray),
          ),
          textDirection: TextDirection.ltr,
        )..layout();
        tp.paint(
          canvas,
          Offset(x - tp.width / 2, size.height - bottomPad + 4),
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant _PnLBarChartPainter oldDelegate) =>
      oldDelegate.selectedIndex != selectedIndex ||
      oldDelegate.points != points;
}

class _CumulativeLineChart extends StatelessWidget {
  final List<PnlTrendPointEntity> points;
  final int selectedIndex;

  const _CumulativeLineChart({
    required this.points,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _CumulativeLinePainter(
        points: points,
        selectedIndex: selectedIndex,
      ),
      child: const SizedBox.expand(),
    );
  }
}

class _CumulativeLinePainter extends CustomPainter {
  final List<PnlTrendPointEntity> points;
  final int selectedIndex;

  _CumulativeLinePainter({
    required this.points,
    required this.selectedIndex,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (points.length < 2) return;

    const pad = 8.0;
    final values = points.map((p) => p.cumulativeRealizedPnL).toList();
    final minV = values.reduce(math.min);
    final maxV = values.reduce(math.max);
    final range = (maxV - minV).abs() < 1 ? 1.0 : maxV - minV;
    final w = size.width - pad * 2;
    final h = size.height - pad * 2;

    final path = Path();
    for (var i = 0; i < points.length; i++) {
      final x = pad + (i / (points.length - 1)) * w;
      final y = pad + h - ((values[i] - minV) / range) * h;
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }

    canvas.drawPath(
      path,
      Paint()
        ..color = AppColors.blueAccent
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2
        ..strokeCap = StrokeCap.round,
    );

    if (selectedIndex >= 0 && selectedIndex < points.length) {
      final x = pad + (selectedIndex / (points.length - 1)) * w;
      final y = pad +
          h -
          ((values[selectedIndex] - minV) / range) * h;
      canvas.drawCircle(
        Offset(x, y),
        5,
        Paint()..color = AppColors.blueAccent,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _CumulativeLinePainter oldDelegate) =>
      oldDelegate.selectedIndex != selectedIndex ||
      oldDelegate.points != points;
}

class _ActivityBarChart extends StatelessWidget {
  final List<ActivityTrendPointEntity> points;
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const _ActivityBarChart({
    required this.points,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return CustomPaint(
          size: Size(constraints.maxWidth, constraints.maxHeight),
          painter: _ActivityBarChartPainter(
            points: points,
            selectedIndex: selectedIndex,
          ),
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapDown: (details) {
              final index = _barIndexAt(
                details.localPosition.dx,
                constraints.maxWidth,
                points.length,
              );
              if (index != null) onSelect(index);
            },
          ),
        );
      },
    );
  }
}

class _ActivityBarChartPainter extends CustomPainter {
  final List<ActivityTrendPointEntity> points;
  final int selectedIndex;

  _ActivityBarChartPainter({
    required this.points,
    required this.selectedIndex,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (points.isEmpty) return;

    const bottomPad = 28.0;
    const topPad = 8.0;
    final chartH = size.height - bottomPad - topPad;
    final maxV = points
        .map((p) => math.max(p.buyQuantity, p.sellQuantity))
        .fold(0.0, math.max)
        .clamp(1.0, double.infinity);
    final gap = size.width / points.length;
    final pairW = gap * 0.7;
    final barW = pairW / 2 - 2;

    for (var i = 0; i < points.length; i++) {
      final p = points[i];
      final cx = gap * i + gap / 2;
      final isSelected = i == selectedIndex;

      for (final entry in [
        (p.buyQuantity, AppColors.success, cx - barW / 2 - 1),
        (p.sellQuantity, AppColors.danger, cx + barW / 2 + 1),
      ]) {
        final qty = entry.$1;
        final color = entry.$2;
        final x = entry.$3;
        final h = (qty / maxV) * chartH;
        final rect = Rect.fromLTWH(
          x - barW / 2,
          topPad + chartH - h,
          barW,
          h,
        );
        canvas.drawRRect(
          RRect.fromRectAndRadius(rect, const Radius.circular(3)),
          Paint()..color = color.withValues(alpha: isSelected ? 1 : 0.7),
        );
      }

      if (points.length <= 10 || i % 2 == 0 || i == points.length - 1) {
        final label = points[i].date.substring(5);
        final tp = TextPainter(
          text: TextSpan(
            text: label,
            style: const TextStyle(fontSize: 9, color: AppColors.neutralGray),
          ),
          textDirection: TextDirection.ltr,
        )..layout();
        tp.paint(
          canvas,
          Offset(cx - tp.width / 2, size.height - bottomPad + 4),
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant _ActivityBarChartPainter oldDelegate) =>
      oldDelegate.selectedIndex != selectedIndex ||
      oldDelegate.points != points;
}

int? _barIndexAt(double x, double width, int count) {
  if (count == 0) return null;
  final gap = width / count;
  final index = (x / gap).floor();
  if (index < 0 || index >= count) return null;
  return index;
}

String _formatDate(String iso) {
  try {
    final parts = iso.split('-');
    if (parts.length == 3) {
      const months = [
        'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
        'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
      ];
      final month = int.parse(parts[1]);
      return '${parts[2]} ${months[month - 1]}';
    }
  } catch (_) {}
  return iso;
}
