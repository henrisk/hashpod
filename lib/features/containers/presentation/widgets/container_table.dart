import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashpod/core/theme/app_theme.dart';
import 'package:hashpod/features/containers/domain/container_info.dart';
import 'package:hashpod/features/containers/presentation/widgets/container_row.dart';

// ---------------------------------------------------------------------------
// Container Table
// ---------------------------------------------------------------------------

class ContainerTable extends StatelessWidget {
  const ContainerTable({
    super.key,
    required this.serverName,
    required this.containers,
  });

  final String serverName;
  final List<ContainerInfo> containers;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HashpodColors.surfaceCard,
        borderRadius: HashpodRadius.mdBorderRadius,
        border: Border.all(color: HashpodColors.surfaceBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Table header
          _TableHeader(serverName: serverName),

          // Column labels
          _ColumnLabels(),

          // Rows
          if (containers.isEmpty)
            _EmptyState()
          else
            ...containers.map((c) => ContainerRow(container: c)),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Table header row
// ---------------------------------------------------------------------------

class _TableHeader extends StatelessWidget {
  const _TableHeader({required this.serverName});
  final String serverName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        HashpodSpacing.md,
        HashpodSpacing.md,
        HashpodSpacing.md,
        HashpodSpacing.sm,
      ),
      child: Row(
        children: [
          Text(
            'Active Containers',
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: HashpodColors.textPrimary,
            ),
          ),
          const SizedBox(width: HashpodSpacing.sm),
          Text(
            serverName,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: HashpodColors.textMuted,
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Column labels
// ---------------------------------------------------------------------------

class _ColumnLabels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: HashpodColors.textMuted,
      letterSpacing: 0.5,
    );

    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: HashpodColors.surfaceBorder),
          bottom: BorderSide(color: HashpodColors.surfaceBorder),
        ),
        color: Color(0xFF0D1117),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: HashpodSpacing.md,
        vertical: HashpodSpacing.sm,
      ),
      child: Row(
        children: [
          const Expanded(flex: 3, child: Text('NAME / IMAGE', style: style)),
          const SizedBox(width: 0, child: SizedBox(width: 100, child: Text('STATUS', style: style))),
          const Expanded(flex: 2, child: Text('PORTS', style: style)),
          const SizedBox(width: 110, child: Text('CPU', style: style)),
          const SizedBox(width: 80, child: Text('RAM', style: style)),
          const SizedBox(width: 140, child: Text('ACTIONS', style: style, textAlign: TextAlign.right)),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Empty state
// ---------------------------------------------------------------------------

class _EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(HashpodSpacing.xl),
      child: Center(
        child: Column(
          children: [
            Icon(
              Icons.inbox_outlined,
              size: 40,
              color: HashpodColors.textMuted.withValues(alpha: 0.5),
            ),
            const SizedBox(height: HashpodSpacing.sm),
            Text(
              'No containers found',
              style: GoogleFonts.inter(
                color: HashpodColors.textMuted,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
