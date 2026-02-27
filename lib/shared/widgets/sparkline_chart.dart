import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

/// A tiny animated sparkline used in container rows and summary cards.
class SparklineChart extends StatelessWidget {
  const SparklineChart({
    super.key,
    required this.data,
    this.color,
    this.width = 64,
    this.height = 24,
    this.maxY = 100,
    this.lineWidth = 1.5,
    this.showFill = true,
  });

  final List<double> data;
  final Color? color;
  final double width;
  final double height;
  final double maxY;
  final double lineWidth;
  final bool showFill;

  @override
  Widget build(BuildContext context) {
    final lineColor = color ?? const Color(0xFF00E5FF);

    if (data.isEmpty) {
      return SizedBox(width: width, height: height);
    }

    final spots = data
        .asMap()
        .entries
        .map((e) => FlSpot(e.key.toDouble(), e.value.clamp(0, maxY)))
        .toList();

    return SizedBox(
      width: width,
      height: height,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              curveSmoothness: 0.35,
              color: lineColor,
              barWidth: lineWidth,
              dotData: const FlDotData(show: false),
              belowBarData: showFill
                  ? BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: [
                          lineColor.withValues(alpha: 0.25),
                          lineColor.withValues(alpha: 0.0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    )
                  : BarAreaData(show: false),
            ),
          ],
          gridData: const FlGridData(show: false),
          titlesData: const FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          minY: 0,
          maxY: maxY,
          lineTouchData: const LineTouchData(enabled: false),
          clipData: const FlClipData.all(),
        ),
        duration: const Duration(milliseconds: 200),
      ),
    );
  }
}
