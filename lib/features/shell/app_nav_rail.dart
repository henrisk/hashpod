import 'package:flutter/material.dart';
import 'package:hashpod/core/theme/app_theme.dart';

// ---------------------------------------------------------------------------
// AppNavRail — narrow icon-only navigation rail on the far left
// ---------------------------------------------------------------------------
//
// Entries:
//   index 0 → Fleet view  (ship / dns icon)
//   index 1 → Settings    (gear icon — placeholder for future screen)

class AppNavRail extends StatefulWidget {
  const AppNavRail({super.key});

  @override
  State<AppNavRail> createState() => _AppNavRailState();
}

class _AppNavRailState extends State<AppNavRail> {
  int _selected = 0; // fleet is the default

  static const double _railWidth = 52.0;
  static const double _iconSize = 22.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _railWidth,
      decoration: const BoxDecoration(
        color: Color(0xFF0A0E14), // slightly darker than surfaceBg
        border: Border(
          right: BorderSide(
            color: HashpodColors.surfaceBorder,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: HashpodSpacing.lg),

          // ── Fleet icon ──────────────────────────────────────────────────
          _NavItem(
            icon: Icons.grid_view_rounded,
            tooltip: 'Fleet',
            selected: _selected == 0,
            onTap: () => setState(() => _selected = 0),
            iconSize: _iconSize,
          ),

          const SizedBox(height: HashpodSpacing.sm),

          // ── Settings icon ────────────────────────────────────────────────
          _NavItem(
            icon: Icons.settings_outlined,
            tooltip: 'Settings',
            selected: _selected == 1,
            onTap: () => setState(() => _selected = 1),
            iconSize: _iconSize,
          ),

          const Spacer(),

          // ── App logo / version dot at the bottom (subtle) ────────────────
          Container(
            width: 6,
            height: 6,
            margin: const EdgeInsets.only(bottom: HashpodSpacing.md),
            decoration: BoxDecoration(
              color: HashpodColors.accent.withValues(alpha: 0.25),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Individual nav item
// ---------------------------------------------------------------------------

class _NavItem extends StatefulWidget {
  const _NavItem({
    required this.icon,
    required this.tooltip,
    required this.selected,
    required this.onTap,
    this.iconSize = 22.0,
  });

  final IconData icon;
  final String tooltip;
  final bool selected;
  final VoidCallback onTap;
  final double iconSize;

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final isActive = widget.selected;
    final color = isActive
        ? HashpodColors.accent
        : _hovered
            ? HashpodColors.textSecondary
            : HashpodColors.textMuted;

    return Tooltip(
      message: widget.tooltip,
      preferBelow: false,
      waitDuration: const Duration(milliseconds: 400),
      textStyle: const TextStyle(
        color: HashpodColors.textPrimary,
        fontSize: 12,
      ),
      decoration: BoxDecoration(
        color: HashpodColors.surfaceCard,
        borderRadius: HashpodRadius.smBorderRadius,
        border: Border.all(color: HashpodColors.surfaceBorder),
      ),
      child: MouseRegion(
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: widget.onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: isActive
                  ? HashpodColors.accent.withValues(alpha: 0.12)
                  : _hovered
                      ? HashpodColors.surfaceCard
                      : Colors.transparent,
              borderRadius: HashpodRadius.smBorderRadius,
              border: isActive
                  ? Border.all(
                      color: HashpodColors.accent.withValues(alpha: 0.35),
                      width: 1,
                    )
                  : null,
              boxShadow: isActive
                  ? [
                      BoxShadow(
                        color: HashpodColors.glowAccent.withValues(alpha: 0.30),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ]
                  : null,
            ),
            child: Icon(
              widget.icon,
              size: widget.iconSize,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
