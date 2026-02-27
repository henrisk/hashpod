import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashpod/core/theme/app_theme.dart';
import 'package:hashpod/features/servers/presentation/providers/servers_provider.dart';
import 'package:hashpod/features/servers/domain/server.dart';
import 'package:hashpod/features/containers/presentation/providers/containers_provider.dart';

// ---------------------------------------------------------------------------
// App Header — shown at the top of the main content area
// ---------------------------------------------------------------------------

class AppHeader extends ConsumerWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final server = ref.watch(selectedServerProvider);
    final searchCtrl = TextEditingController(
      text: ref.watch(containerSearchProvider),
    );

    if (server == null) {
      return const SizedBox(height: HashpodSpacing.headerHeight);
    }

    return Container(
      height: HashpodSpacing.headerHeight + 16,
      padding: const EdgeInsets.symmetric(
        horizontal: HashpodSpacing.lg,
        vertical: HashpodSpacing.sm,
      ),
      decoration: const BoxDecoration(
        color: HashpodColors.surfaceBg,
        border: Border(
          bottom: BorderSide(color: HashpodColors.surfaceBorder),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Server info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      server.displayName,
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: HashpodColors.textPrimary,
                      ),
                    ),
                    const SizedBox(width: HashpodSpacing.md),
                    _ManagerBadge(manager: server.manager),
                  ],
                ),
                if (server.host.isNotEmpty)
                  Text(
                    '${server.host}:${server.port}  ·  ${server.sshUser}',
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: 11,
                      color: HashpodColors.textMuted,
                    ),
                  ),
              ],
            ),
          ),

          // Search
          SizedBox(
            width: 240,
            child: TextField(
              controller: searchCtrl,
              onChanged: (v) =>
                  ref.read(containerSearchProvider.notifier).state = v,
              style: GoogleFonts.inter(
                fontSize: 13,
                color: HashpodColors.textPrimary,
              ),
              decoration: InputDecoration(
                hintText: 'Search containers…',
                prefixIcon: const Icon(
                  Icons.search,
                  size: 16,
                  color: HashpodColors.textMuted,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: HashpodSpacing.md,
                  vertical: HashpodSpacing.sm,
                ),
              ),
            ),
          ),
          const SizedBox(width: HashpodSpacing.sm),

          // Refresh button
          _HeaderIconBtn(
            icon: Icons.refresh_rounded,
            tooltip: 'Refresh',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Manager badge (Docker / Podman / LXC)
// ---------------------------------------------------------------------------

class _ManagerBadge extends StatelessWidget {
  const _ManagerBadge({required this.manager});

  final ContainerManager manager;

  @override
  Widget build(BuildContext context) {
    final (label, color) = switch (manager) {
      ContainerManager.docker => ('Docker', const Color(0xFF1D63ED)),
      ContainerManager.podman => ('Podman', const Color(0xFF892CA0)),
      ContainerManager.lxc => ('LXC', const Color(0xFFDD4814)),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: HashpodRadius.smBorderRadius,
        border: Border.all(color: color.withValues(alpha: 0.35)),
      ),
      child: Text(
        label,
        style: GoogleFonts.inter(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: color,
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Header icon button
// ---------------------------------------------------------------------------

class _HeaderIconBtn extends StatefulWidget {
  const _HeaderIconBtn({
    required this.icon,
    required this.tooltip,
    required this.onTap,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;

  @override
  State<_HeaderIconBtn> createState() => _HeaderIconBtnState();
}

class _HeaderIconBtnState extends State<_HeaderIconBtn> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.tooltip,
      child: MouseRegion(
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        child: GestureDetector(
          onTap: widget.onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              borderRadius: HashpodRadius.smBorderRadius,
              color: _hovered
                  ? HashpodColors.surfaceCard
                  : Colors.transparent,
              border: Border.all(
                color: _hovered
                    ? HashpodColors.surfaceBorder
                    : Colors.transparent,
              ),
            ),
            child: Icon(
              widget.icon,
              size: 18,
              color: _hovered
                  ? HashpodColors.textPrimary
                  : HashpodColors.textSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
