import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/server.dart';

// ---------------------------------------------------------------------------
// Mock data — to be replaced with persistence layer
// ---------------------------------------------------------------------------

final _mockServers = [
  const Server(
    id: 'srv-1',
    displayName: 'Homelab',
    manager: ContainerManager.docker,
    connectionType: ConnectionType.remote,
    host: '192.168.1.100',
    port: 22,
    sshUser: 'admin',
    status: ServerStatus.online,
  ),
  const Server(
    id: 'srv-2',
    displayName: 'VPS',
    manager: ContainerManager.podman,
    connectionType: ConnectionType.remote,
    host: '54.210.33.1',
    port: 22,
    sshUser: 'ubuntu',
    status: ServerStatus.offline,
  ),
  const Server(
    id: 'srv-3',
    displayName: 'DB Server',
    manager: ContainerManager.docker,
    connectionType: ConnectionType.remote,
    host: '10.0.0.5',
    port: 22,
    sshUser: 'root',
    status: ServerStatus.online,
  ),
];

// ---------------------------------------------------------------------------
// Providers
// ---------------------------------------------------------------------------

/// List of all configured servers.
final serversProvider = StateNotifierProvider<ServersNotifier, List<Server>>(
  (ref) => ServersNotifier(),
);

/// ID of the currently selected server.
final selectedServerIdProvider = StateProvider<String?>(
  (ref) => _mockServers.first.id,
);

/// The full Server object for the selected server.
final selectedServerProvider = Provider<Server?>((ref) {
  final id = ref.watch(selectedServerIdProvider);
  if (id == null) return null;
  final servers = ref.watch(serversProvider);
  try {
    return servers.firstWhere((s) => s.id == id);
  } catch (_) {
    return null;
  }
});

// ---------------------------------------------------------------------------
// Notifier
// ---------------------------------------------------------------------------

class ServersNotifier extends StateNotifier<List<Server>> {
  ServersNotifier() : super(_mockServers);

  void addServer(Server server) {
    state = [...state, server];
  }

  void removeServer(String id) {
    state = state.where((s) => s.id != id).toList();
  }

  void updateServer(Server updated) {
    state = [
      for (final s in state)
        if (s.id == updated.id) updated else s,
    ];
  }
}
