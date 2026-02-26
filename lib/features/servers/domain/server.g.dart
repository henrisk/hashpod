// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Server _$ServerFromJson(Map<String, dynamic> json) => _Server(
  id: json['id'] as String,
  displayName: json['displayName'] as String,
  manager:
      $enumDecodeNullable(_$ContainerManagerEnumMap, json['manager']) ??
      ContainerManager.docker,
  connectionType:
      $enumDecodeNullable(_$ConnectionTypeEnumMap, json['connectionType']) ??
      ConnectionType.remote,
  host: json['host'] as String? ?? '',
  port: (json['port'] as num?)?.toInt() ?? 22,
  sshUser: json['sshUser'] as String? ?? '',
  privateKeyPath: json['privateKeyPath'] as String? ?? '',
  socketPath: json['socketPath'] as String? ?? '/var/run/docker.sock',
  status:
      $enumDecodeNullable(_$ServerStatusEnumMap, json['status']) ??
      ServerStatus.unknown,
);

Map<String, dynamic> _$ServerToJson(_Server instance) => <String, dynamic>{
  'id': instance.id,
  'displayName': instance.displayName,
  'manager': _$ContainerManagerEnumMap[instance.manager]!,
  'connectionType': _$ConnectionTypeEnumMap[instance.connectionType]!,
  'host': instance.host,
  'port': instance.port,
  'sshUser': instance.sshUser,
  'privateKeyPath': instance.privateKeyPath,
  'socketPath': instance.socketPath,
  'status': _$ServerStatusEnumMap[instance.status]!,
};

const _$ContainerManagerEnumMap = {
  ContainerManager.docker: 'docker',
  ContainerManager.podman: 'podman',
  ContainerManager.lxc: 'lxc',
};

const _$ConnectionTypeEnumMap = {
  ConnectionType.local: 'local',
  ConnectionType.remote: 'remote',
};

const _$ServerStatusEnumMap = {
  ServerStatus.unknown: 'unknown',
  ServerStatus.connecting: 'connecting',
  ServerStatus.online: 'online',
  ServerStatus.offline: 'offline',
};
