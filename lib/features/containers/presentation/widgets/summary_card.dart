import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashpod/core/theme/app_theme.dart';
import 'package:hashpod/features/containers/domain/container_info.dart';
import 'package:hashpod/shared/widgets/sparkline_chart.dart';

// ---------------------------------------------------------------------------
// SummaryCard — one of the 3 health cards at the top of the dashboard
// ---------------------------------------------------------------------------

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    super.key,
    required this.title,
    required this.child,
    this.accentColor = HashpodColors.accent,
    this.width,
  });

  final String title;
  final Widget child;
  final Color accentColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(HashpodSpacing.md),
      decoration: BoxDecoration(
        color: HashpodColors.surfaceCard,
        borderRadius: HashpodRadius.mdBorderRadius,
        border: Border.all(color: HashpodColors.surfaceBorder),
        boxShadow: [
          BoxShadow(
            color: accentColor.withValues(alpha: 0.06),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: HashpodColors.textSecondary,
              letterSpacing: 0.4,
            ),
          ),
          const SizedBox(height: HashpodSpacing.sm),
          child,
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// CPU Card
// ---------------------------------------------------------------------------

class CpuSummaryCard extends StatelessWidget {
  const CpuSummaryCard({
    super.key,
    required this.cpuPercent,
    required this.history,
  });

  final double cpuPercent;
  final List<double> history;

  @override
  Widget build(BuildContext context) {
    return SummaryCard(
      title: 'TOTAL CPU',
      accentColor: HashpodColors.accent,
      child: Row(
        children: [
          Text(
            '${cpuPercent.toStringAsFixed(1)}%',
            style: GoogleFonts.inter(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: HashpodColors.textPrimary,
              height: 1.1,
            ),
          ),
          const Spacer(),
          SparklineChart(
            data: history,
            color: HashpodColors.accent,
            width: 80,
            height: 36,
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// RAM Card — with circular gauge
// ---------------------------------------------------------------------------

class RamSummaryCard extends StatelessWidget {
  const RamSummaryCard({
    super.key,
    required this.usedBytes,
    required this.totalBytes,
  });

  final int usedBytes;
  final int totalBytes;

  String _fmt(int bytes) {
    const gb = 1024 * 1024 * 1024;
    const mb = 1024 * 1024;
    if (bytes >= gb) return '${(bytes / gb).toStringAsFixed(1)} GB';
    return '${(bytes / mb).toStringAsFixed(0)} MB';
  }

  @override
  Widget build(BuildContext context) {
    final pct = totalBytes > 0 ? (usedBytes / totalBytes).clamp(0.0, 1.0) : 0.0;

    return SummaryCard(
      title: 'TOTAL RAM',
      accentColor: const Color(0xFF00B4D8),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _fmt(usedBytes),
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: HashpodColors.textPrimary,
                  height: 1.1,
                ),
              ),
              Text(
                'of ${_fmt(totalBytes)}',
                style: GoogleFonts.inter(
                  fontSize: 11,
                  color: HashpodColors.textMuted,
                ),
              ),
            ],
          ),
          const Spacer(),
          // Circular gauge
          SizedBox(
            width: 48,
            height: 48,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircularProgressIndicator(
                  value: pct,
                  strokeWidth: 5,
                  backgroundColor: HashpodColors.surfaceBorder,
                  valueColor: AlwaysStoppedAnimation(
                    Color.lerp(
                      const Color(0xFF00E5FF),
                      const Color(0xFFEF5350),
                      pct,
                    )!,
                  ),
                  strokeCap: StrokeCap.round,
                ),
                Text(
                  '${(pct * 100).toStringAsFixed(0)}%',
                  style: GoogleFonts.inter(
                    fontSize: 9,
                    fontWeight: FontWeight.w700,
                    color: HashpodColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Containers count card
// ---------------------------------------------------------------------------

class ContainersSummaryCard extends StatelessWidget {
  const ContainersSummaryCard({
    super.key,
    required this.metrics,
  });

  final ServerMetrics metrics;

  @override
  Widget build(BuildContext context) {
    return SummaryCard(
      title: 'CONTAINERS',
      accentColor: HashpodColors.statusOnline,
      child: Row(
        children: [
          Text(
            '${metrics.containersRunning + metrics.containersStopped}',
            style: GoogleFonts.inter(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: HashpodColors.textPrimary,
              height: 1.1,
            ),
          ),
          const SizedBox(width: HashpodSpacing.md),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CountBadge(
                icon: Icons.play_circle_outline,
                count: metrics.containersRunning,
                label: 'Running',
                color: HashpodColors.statusOnline,
              ),
              const SizedBox(height: 4),
              _CountBadge(
                icon: Icons.stop_circle_outlined,
                count: metrics.containersStopped,
                label: 'Stopped',
                color: HashpodColors.statusOffline,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CountBadge extends StatelessWidget {
  const _CountBadge({
    required this.icon,
    required this.count,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final int count;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 12, color: color),
        const SizedBox(width: 3),
        Text(
          '$count $label',
          style: GoogleFonts.inter(
            fontSize: 11,
            color: HashpodColors.textSecondary,
          ),
        ),
      ],
    );
  }
}
