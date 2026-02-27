import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashpod/core/theme/app_theme.dart';
import 'package:hashpod/features/containers/presentation/providers/containers_provider.dart';
import 'package:hashpod/features/containers/presentation/widgets/summary_card.dart';
import 'package:hashpod/features/containers/presentation/widgets/container_table.dart';
import 'package:hashpod/features/servers/presentation/providers/servers_provider.dart';

// ---------------------------------------------------------------------------
// Dashboard Screen — the "landing" view for a selected server
// ---------------------------------------------------------------------------

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final server = ref.watch(selectedServerProvider);
    final metrics = ref.watch(serverMetricsProvider);
    final containers = ref.watch(filteredContainersProvider);

    if (server == null) {
      return _NoServerSelected();
    }

    // Build CPU sparkline from all containers combined
    final cpuHistory = containers.isNotEmpty
        ? List.generate(
            10,
            (i) => containers.fold<double>(
              0,
              (s, c) => s + (c.stats?.cpuHistory.elementAtOrNull(i) ?? 0),
            ),
          )
        : <double>[];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(HashpodSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ---- Page title ----
          Text(
            '${server.displayName} — Dashboard',
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: HashpodColors.textPrimary,
            ),
          ),
          const SizedBox(height: HashpodSpacing.sm),
          Text(
            'Server health at a glance',
            style: GoogleFonts.inter(
              fontSize: 13,
              color: HashpodColors.textMuted,
            ),
          ),
          const SizedBox(height: HashpodSpacing.lg),

          // ---- Summary cards ----
          Row(
            children: [
              Expanded(
                child: CpuSummaryCard(
                  cpuPercent: metrics.totalCpuPercent,
                  history: cpuHistory,
                ),
              ),
              const SizedBox(width: HashpodSpacing.md),
              Expanded(
                child: RamSummaryCard(
                  usedBytes: metrics.totalMemoryBytes,
                  totalBytes: metrics.totalMemoryLimitBytes,
                ),
              ),
              const SizedBox(width: HashpodSpacing.md),
              Expanded(
                child: ContainersSummaryCard(metrics: metrics),
              ),
            ],
          ),
          const SizedBox(height: HashpodSpacing.lg),

          // ---- Container table ----
          ContainerTable(
            serverName: server.displayName,
            containers: containers,
          ),
          const SizedBox(height: HashpodSpacing.xl),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Empty state — no server selected
// ---------------------------------------------------------------------------

class _NoServerSelected extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.dns_outlined,
            size: 64,
            color: HashpodColors.textMuted.withValues(alpha: 0.4),
          ),
          const SizedBox(height: HashpodSpacing.md),
          Text(
            'Select a server from the sidebar',
            style: GoogleFonts.inter(
              fontSize: 15,
              color: HashpodColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
