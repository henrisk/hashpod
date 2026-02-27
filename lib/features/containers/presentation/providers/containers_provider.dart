import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hashpod/features/servers/presentation/providers/servers_provider.dart';
import 'package:hashpod/features/containers/domain/container_info.dart';

// ---------------------------------------------------------------------------
// Mock container data per server
// ---------------------------------------------------------------------------

List<double> _wave(List<int> vals) =>
    vals.map((v) => v.toDouble()).toList();

final _mockContainers = <String, List<ContainerInfo>>{
  'srv-1': [
    ContainerInfo(
      id: 'c1',
      name: 'flowmanager-db',
      image: 'postgres:15-alpine',
      status: ContainerStatus.running,
      ports: [const ContainerPort(privatePort: 5432, publicPort: 5432)],
      stats: ContainerStats(
        cpuPercent: 5,
        memoryBytes: 320 * 1024 * 1024,
        memoryLimitBytes: 2048 * 1024 * 1024,
        cpuHistory: _wave([3, 4, 5, 3, 6, 5, 4, 5, 6, 5]),
        ramHistory: _wave([310, 315, 318, 316, 320, 319, 321, 318, 320, 320]),
      ),
    ),
    ContainerInfo(
      id: 'c2',
      name: 'auth-service',
      image: 'node:18-slim',
      status: ContainerStatus.running,
      ports: [const ContainerPort(privatePort: 3000, publicPort: 3000)],
      stats: ContainerStats(
        cpuPercent: 12,
        memoryBytes: 450 * 1024 * 1024,
        memoryLimitBytes: 1024 * 1024 * 1024,
        cpuHistory: _wave([8, 10, 15, 12, 14, 11, 13, 12, 11, 12]),
        ramHistory: _wave([440, 445, 448, 450, 452, 449, 451, 450, 448, 450]),
      ),
    ),
    ContainerInfo(
      id: 'c3',
      name: 'nginx-proxy',
      image: 'nginx:latest',
      status: ContainerStatus.running,
      ports: [
        const ContainerPort(privatePort: 80, publicPort: 80),
        const ContainerPort(privatePort: 443, publicPort: 443),
      ],
      stats: ContainerStats(
        cpuPercent: 8,
        memoryBytes: 110 * 1024 * 1024,
        memoryLimitBytes: 512 * 1024 * 1024,
        cpuHistory: _wave([6, 7, 9, 8, 7, 8, 9, 8, 7, 8]),
        ramHistory: _wave([105, 108, 110, 109, 111, 110, 108, 110, 112, 110]),
      ),
    ),
    ContainerInfo(
      id: 'c4',
      name: 'data-worker',
      image: 'python:3.9-slim',
      status: ContainerStatus.running,
      ports: [],
      stats: ContainerStats(
        cpuPercent: 21,
        memoryBytes: 680 * 1024 * 1024,
        memoryLimitBytes: 2048 * 1024 * 1024,
        cpuHistory: _wave([18, 22, 25, 20, 19, 21, 23, 22, 20, 21]),
        ramHistory: _wave([660, 670, 675, 678, 680, 681, 679, 680, 682, 680]),
      ),
    ),
    ContainerInfo(
      id: 'c5',
      name: 'broken-app',
      image: 'hashpod/app:v1.3',
      status: ContainerStatus.dead,
      ports: [],
      stats: ContainerStats(
        cpuPercent: 0,
        memoryBytes: 25 * 1024 * 1024,
        memoryLimitBytes: 512 * 1024 * 1024,
        cpuHistory: _wave([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]),
        ramHistory: _wave([25, 25, 25, 25, 25, 25, 25, 25, 25, 25]),
      ),
    ),
  ],
  'srv-2': [
    ContainerInfo(
      id: 'c6',
      name: 'traefik',
      image: 'traefik:v3',
      status: ContainerStatus.running,
      ports: [const ContainerPort(privatePort: 80, publicPort: 80)],
      stats: ContainerStats(
        cpuPercent: 3,
        memoryBytes: 60 * 1024 * 1024,
        memoryLimitBytes: 256 * 1024 * 1024,
        cpuHistory: _wave([2, 3, 4, 3, 2, 3, 3, 4, 3, 3]),
        ramHistory: _wave([58, 59, 60, 61, 60, 59, 60, 61, 60, 60]),
      ),
    ),
  ],
  'srv-3': [
    ContainerInfo(
      id: 'c7',
      name: 'postgres-main',
      image: 'postgres:16',
      status: ContainerStatus.running,
      ports: [const ContainerPort(privatePort: 5432, publicPort: 5432)],
      stats: ContainerStats(
        cpuPercent: 2,
        memoryBytes: 512 * 1024 * 1024,
        memoryLimitBytes: 4096 * 1024 * 1024,
        cpuHistory: _wave([1, 2, 2, 3, 2, 2, 1, 2, 3, 2]),
        ramHistory: _wave([500, 505, 510, 512, 511, 512, 513, 512, 511, 512]),
      ),
    ),
  ],
};

// ---------------------------------------------------------------------------
// Providers
// ---------------------------------------------------------------------------

/// Containers for the currently selected server.
final containersProvider = Provider<List<ContainerInfo>>((ref) {
  final serverId = ref.watch(selectedServerIdProvider);
  if (serverId == null) return [];
  return _mockContainers[serverId] ?? [];
});

/// Server-level metrics derived from containers.
final serverMetricsProvider = Provider<ServerMetrics>((ref) {
  final containers = ref.watch(containersProvider);
  final running =
      containers.where((c) => c.status == ContainerStatus.running).length;
  final stopped = containers
      .where((c) =>
          c.status == ContainerStatus.stopped ||
          c.status == ContainerStatus.dead)
      .length;
  final totalCpu = containers.fold<double>(
    0,
    (sum, c) => sum + (c.stats?.cpuPercent ?? 0),
  );
  final totalMem = containers.fold<int>(
    0,
    (sum, c) => sum + (c.stats?.memoryBytes ?? 0),
  );
  return ServerMetrics(
    totalCpuPercent: totalCpu,
    totalMemoryBytes: totalMem,
    totalMemoryLimitBytes: 16 * 1024 * 1024 * 1024,
    containersRunning: running,
    containersStopped: stopped,
  );
});

/// Search query for filtering containers.
final containerSearchProvider = StateProvider<String>((ref) => '');

/// Filtered container list.
final filteredContainersProvider = Provider<List<ContainerInfo>>((ref) {
  final all = ref.watch(containersProvider);
  final query = ref.watch(containerSearchProvider).toLowerCase().trim();
  if (query.isEmpty) return all;
  return all
      .where(
        (c) =>
            c.name.toLowerCase().contains(query) ||
            c.image.toLowerCase().contains(query),
      )
      .toList();
});
