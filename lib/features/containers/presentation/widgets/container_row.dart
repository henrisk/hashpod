import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashpod/core/theme/app_theme.dart';
import 'package:hashpod/features/containers/domain/container_info.dart';
import 'package:hashpod/shared/widgets/sparkline_chart.dart';

// ---------------------------------------------------------------------------
// ContainerRow — one row in the container table
// ---------------------------------------------------------------------------

class ContainerRow extends StatefulWidget {
  const ContainerRow({super.key, required this.container});

  final ContainerInfo container;

  @override
  State<ContainerRow> createState() => _ContainerRowState();
}

class _ContainerRowState extends State<ContainerRow> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final c = widget.container;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 120),
        decoration: BoxDecoration(
          color: _hovered
              ? HashpodColors.surfaceCard.withValues(alpha: 0.70)
              : Colors.transparent,
          border: Border(
            bottom: BorderSide(
              color: HashpodColors.surfaceBorder.withValues(alpha: 0.50),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: HashpodSpacing.md,
            vertical: 10,
          ),
          child: Row(
            children: [
              // Name + Image
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      c.name,
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: HashpodColors.textPrimary,
                      ),
                    ),
                    Text(
                      c.image,
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 11,
                        color: HashpodColors.textMuted,
                      ),
                    ),
                  ],
                ),
              ),

              // Status badge
              SizedBox(
                width: 100,
                child: _StatusBadge(status: c.status),
              ),

              // Ports
              Expanded(
                flex: 2,
                child: c.ports.isEmpty
                    ? Text(
                        '—',
                        style: GoogleFonts.jetBrainsMono(
                          fontSize: 11,
                          color: HashpodColors.textMuted,
                        ),
                      )
                    : Wrap(
                        spacing: 4,
                        runSpacing: 2,
                        children: c.ports
                            .take(2)
                            .map(
                              (p) => Text(
                                p.publicPort != null
                                    ? '${p.publicPort}:${p.privatePort}'
                                    : '${p.privatePort}',
                                style: GoogleFonts.jetBrainsMono(
                                  fontSize: 11,
                                  color: HashpodColors.accent
                                      .withValues(alpha: 0.80),
                                ),
                              ),
                            )
                            .toList(),
                      ),
              ),

              // CPU sparkline + value
              SizedBox(
                width: 110,
                child: Row(
                  children: [
                    SparklineChart(
                      data: c.stats?.cpuHistory ?? [],
                      color: HashpodColors.accent,
                      width: 56,
                      height: 22,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '${c.stats?.cpuPercent.toStringAsFixed(0) ?? '0'}%',
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 11,
                        color: HashpodColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),

              // RAM value
              SizedBox(
                width: 80,
                child: Text(
                  _fmtMem(c.stats?.memoryBytes ?? 0),
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 11,
                    color: HashpodColors.textSecondary,
                  ),
                ),
              ),

              // Action buttons (revealed on hover)
              SizedBox(
                width: 140,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 120),
                  opacity: _hovered ? 1.0 : 0.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (c.status != ContainerStatus.running)
                        _ActionBtn(
                          icon: Icons.play_arrow_rounded,
                          color: HashpodColors.statusOnline,
                          tooltip: 'Start',
                          onTap: () {},
                        ),
                      if (c.status == ContainerStatus.running)
                        _ActionBtn(
                          icon: Icons.stop_rounded,
                          color: HashpodColors.textSecondary,
                          tooltip: 'Stop',
                          onTap: () {},
                        ),
                      _ActionBtn(
                        icon: Icons.refresh_rounded,
                        color: HashpodColors.textSecondary,
                        tooltip: 'Restart',
                        onTap: () {},
                      ),
                      _ActionBtn(
                        icon: Icons.terminal_rounded,
                        color: HashpodColors.accent,
                        tooltip: 'Logs',
                        onTap: () {},
                      ),
                      _ActionBtn(
                        icon: Icons.delete_outline_rounded,
                        color: HashpodColors.statusOffline,
                        tooltip: 'Remove',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _fmtMem(int bytes) {
    const mb = 1024 * 1024;
    if (bytes < mb) return '< 1 MB';
    return '${(bytes / mb).round()} MB';
  }
}

// ---------------------------------------------------------------------------
// Status badge
// ---------------------------------------------------------------------------

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.status});

  final ContainerStatus status;

  @override
  Widget build(BuildContext context) {
    final (label, color) = switch (status) {
      ContainerStatus.running => ('Running', HashpodColors.statusOnline),
      ContainerStatus.paused => ('Paused', HashpodColors.statusPaused),
      ContainerStatus.restarting => ('Restarting', HashpodColors.accent),
      ContainerStatus.dead => ('Error', HashpodColors.statusOffline),
      _ => ('Stopped', HashpodColors.textMuted),
    };

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 7,
          height: 7,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            boxShadow: [
              BoxShadow(
                color: color.withValues(alpha: 0.7),
                blurRadius: 4,
              )
            ],
          ),
        ),
        const SizedBox(width: 5),
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Action icon button
// ---------------------------------------------------------------------------

class _ActionBtn extends StatefulWidget {
  const _ActionBtn({
    required this.icon,
    required this.color,
    required this.tooltip,
    required this.onTap,
  });

  final IconData icon;
  final Color color;
  final String tooltip;
  final VoidCallback onTap;

  @override
  State<_ActionBtn> createState() => _ActionBtnState();
}

class _ActionBtnState extends State<_ActionBtn> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.tooltip,
      waitDuration: const Duration(milliseconds: 400),
      child: MouseRegion(
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        child: GestureDetector(
          onTap: widget.onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            width: 28,
            height: 28,
            margin: const EdgeInsets.only(left: 2),
            decoration: BoxDecoration(
              borderRadius: HashpodRadius.smBorderRadius,
              color: _hovered
                  ? widget.color.withValues(alpha: 0.15)
                  : Colors.transparent,
            ),
            child: Icon(
              widget.icon,
              size: 16,
              color: _hovered
                  ? widget.color
                  : widget.color.withValues(alpha: 0.55),
            ),
          ),
        ),
      ),
    );
  }
}
