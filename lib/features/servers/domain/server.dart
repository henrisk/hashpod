// ignore_for_file: unnecessary_import
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server.freezed.dart';
part 'server.g.dart';

// ---------------------------------------------------------------------------
// Enums
// ---------------------------------------------------------------------------

enum ContainerManager { docker, podman, lxc }

enum ConnectionType { local, remote }

enum ServerStatus { unknown, connecting, online, offline }

// ---------------------------------------------------------------------------
// Server model
// ---------------------------------------------------------------------------

@freezed
abstract class Server with _$Server {
  const factory Server({
    required String id,
    required String displayName,
    @Default(ContainerManager.docker) ContainerManager manager,
    @Default(ConnectionType.remote) ConnectionType connectionType,

    // Connection details (SSH)
    @Default('') String host,
    @Default(22) int port,
    @Default('') String sshUser,
    @Default('') String privateKeyPath,

    // Local socket (Docker / Podman)
    @Default('/var/run/docker.sock') String socketPath,

    // Runtime state (not persisted)
    @Default(ServerStatus.unknown) ServerStatus status,
  }) = _Server;

  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);
}
