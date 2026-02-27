import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashpod/core/theme/app_theme.dart';
import 'package:hashpod/features/servers/presentation/providers/servers_provider.dart';
import 'package:hashpod/features/servers/domain/server.dart';
import 'package:hashpod/features/servers/presentation/widgets/add_server_dialog.dart';

// ---------------------------------------------------------------------------
// Server Rail — the left sidebar showing the fleet
// ---------------------------------------------------------------------------

class ServerRail extends ConsumerWidget {
  const ServerRail({super.key});

  static const double _width = 200;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final servers = ref.watch(serversProvider);
    final selectedId = ref.watch(selectedServerIdProvider);

    return Container(
      width: _width,
      decoration: const BoxDecoration(
        color: Color(0xFF0D1117),
        border: Border(
          right: BorderSide(color: HashpodColors.surfaceBorder, width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- Section label ---
          Padding(
            padding: const EdgeInsets.fromLTRB(
              HashpodSpacing.md,
              HashpodSpacing.lg,
              HashpodSpacing.md,
              HashpodSpacing.sm,
            ),
            child: Text(
              'FLEET',
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: HashpodColors.textMuted,
                letterSpacing: 1.5,
              ),
            ),
          ),

          // --- Server list ---
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: HashpodSpacing.sm,
                vertical: HashpodSpacing.xs,
              ),
              itemCount: servers.length,
              itemBuilder: (context, index) {
                final server = servers[index];
                final isSelected = server.id == selectedId;
                return _ServerItem(
                  server: server,
                  isSelected: isSelected,
                  onTap: () => ref
                      .read(selectedServerIdProvider.notifier)
                      .state = server.id,
                );
              },
            ),
          ),

          // --- Add server button ---
          Padding(
            padding: const EdgeInsets.all(HashpodSpacing.md),
            child: _AddServerButton(),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Individual server item
// ---------------------------------------------------------------------------

class _ServerItem extends StatefulWidget {
  const _ServerItem({
    required this.server,
    required this.isSelected,
    required this.onTap,
  });

  final Server server;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  State<_ServerItem> createState() => _ServerItemState();
}

class _ServerItemState extends State<_ServerItem> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final isOnline = widget.server.status == ServerStatus.online;
    final accentColor = HashpodColors.accent;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          margin: const EdgeInsets.only(bottom: HashpodSpacing.xs),
          padding: const EdgeInsets.all(HashpodSpacing.sm + 2),
          decoration: BoxDecoration(
            borderRadius: HashpodRadius.mdBorderRadius,
            color: widget.isSelected
                ? accentColor.withValues(alpha: 0.10)
                : _hovered
                    ? HashpodColors.surfaceCard
                    : Colors.transparent,
            border: Border.all(
              color: widget.isSelected
                  ? accentColor.withValues(alpha: 0.50)
                  : Colors.transparent,
              width: 1,
            ),
            boxShadow: widget.isSelected
                ? [
                    BoxShadow(
                      color: accentColor.withValues(alpha: 0.12),
                      blurRadius: 12,
                    )
                  ]
                : null,
          ),
          child: Row(
            children: [
              // Server avatar (initials)
              _ServerAvatar(
                displayName: widget.server.displayName,
                manager: widget.server.manager,
                isOnline: isOnline,
                isSelected: widget.isSelected,
              ),
              const SizedBox(width: HashpodSpacing.sm),
              // Name + host
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.server.displayName,
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: widget.isSelected
                            ? FontWeight.w600
                            : FontWeight.w500,
                        color: widget.isSelected
                            ? HashpodColors.textPrimary
                            : HashpodColors.textSecondary,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (widget.server.host.isNotEmpty)
                      Text(
                        widget.server.host,
                        style: GoogleFonts.jetBrainsMono(
                          fontSize: 10,
                          color: HashpodColors.textMuted,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Server avatar: initials + status dot
// ---------------------------------------------------------------------------

class _ServerAvatar extends StatelessWidget {
  const _ServerAvatar({
    required this.displayName,
    required this.manager,
    required this.isOnline,
    required this.isSelected,
  });

  final String displayName;
  final ContainerManager manager;
  final bool isOnline;
  final bool isSelected;

  String get _initials {
    final parts = displayName.trim().split(RegExp(r'\s+'));
    if (parts.length == 1) return parts[0].substring(0, 2).toUpperCase();
    return (parts[0][0] + parts[1][0]).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final statusColor =
        isOnline ? HashpodColors.statusOnline : HashpodColors.statusOffline;

    return Stack(
      children: [
        Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(
            borderRadius: HashpodRadius.smBorderRadius,
            color: isSelected
                ? HashpodColors.accent.withValues(alpha: 0.15)
                : HashpodColors.surfaceCard,
            border: Border.all(
              color: isSelected
                  ? HashpodColors.accent.withValues(alpha: 0.40)
                  : HashpodColors.surfaceBorder,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            _initials,
            style: GoogleFonts.inter(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: isSelected
                  ? HashpodColors.accent
                  : HashpodColors.textSecondary,
            ),
          ),
        ),
        // Status dot
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: statusColor,
              border: Border.all(color: const Color(0xFF0D1117), width: 1.5),
              boxShadow: [
                BoxShadow(
                  color: statusColor.withValues(alpha: 0.6),
                  blurRadius: 4,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Add server button
// ---------------------------------------------------------------------------

class _AddServerButton extends StatefulWidget {
  @override
  State<_AddServerButton> createState() => _AddServerButtonState();
}

class _AddServerButtonState extends State<_AddServerButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: () => _showAddServerDialog(context),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: HashpodSpacing.sm + 2,
            horizontal: HashpodSpacing.md,
          ),
          decoration: BoxDecoration(
            borderRadius: HashpodRadius.mdBorderRadius,
            border: Border.all(
              color: _hovered
                  ? HashpodColors.statusOnline
                  : HashpodColors.statusOnline.withValues(alpha: 0.40),
              style: BorderStyle.solid,
            ),
            color: _hovered
                ? HashpodColors.statusOnline.withValues(alpha: 0.08)
                : Colors.transparent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                size: 15,
                color: _hovered
                    ? HashpodColors.statusOnline
                    : HashpodColors.statusOnline.withValues(alpha: 0.70),
              ),
              const SizedBox(width: HashpodSpacing.xs),
              Text(
                'Add Server',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: _hovered
                      ? HashpodColors.statusOnline
                      : HashpodColors.statusOnline.withValues(alpha: 0.70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAddServerDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierColor: Colors.black.withValues(alpha: 0.65),
      builder: (_) => const AddServerDialog(),
    );
  }
}
