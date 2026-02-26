// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContainerPort _$ContainerPortFromJson(Map<String, dynamic> json) =>
    _ContainerPort(
      privatePort: (json['privatePort'] as num).toInt(),
      publicPort: (json['publicPort'] as num?)?.toInt(),
      type: json['type'] as String? ?? 'tcp',
    );

Map<String, dynamic> _$ContainerPortToJson(_ContainerPort instance) =>
    <String, dynamic>{
      'privatePort': instance.privatePort,
      'publicPort': instance.publicPort,
      'type': instance.type,
    };

_ContainerStats _$ContainerStatsFromJson(Map<String, dynamic> json) =>
    _ContainerStats(
      cpuPercent: (json['cpuPercent'] as num?)?.toDouble() ?? 0.0,
      memoryBytes: (json['memoryBytes'] as num?)?.toInt() ?? 0,
      memoryLimitBytes: (json['memoryLimitBytes'] as num?)?.toInt() ?? 0,
      cpuHistory:
          (json['cpuHistory'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      ramHistory:
          (json['ramHistory'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ContainerStatsToJson(_ContainerStats instance) =>
    <String, dynamic>{
      'cpuPercent': instance.cpuPercent,
      'memoryBytes': instance.memoryBytes,
      'memoryLimitBytes': instance.memoryLimitBytes,
      'cpuHistory': instance.cpuHistory,
      'ramHistory': instance.ramHistory,
    };

_ContainerInfo _$ContainerInfoFromJson(Map<String, dynamic> json) =>
    _ContainerInfo(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      status: $enumDecode(_$ContainerStatusEnumMap, json['status']),
      ports:
          (json['ports'] as List<dynamic>?)
              ?.map((e) => ContainerPort.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      stats: json['stats'] == null
          ? null
          : ContainerStats.fromJson(json['stats'] as Map<String, dynamic>),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
    );

Map<String, dynamic> _$ContainerInfoToJson(_ContainerInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'status': _$ContainerStatusEnumMap[instance.status]!,
      'ports': instance.ports,
      'stats': instance.stats,
      'startedAt': instance.startedAt?.toIso8601String(),
    };

const _$ContainerStatusEnumMap = {
  ContainerStatus.running: 'running',
  ContainerStatus.stopped: 'stopped',
  ContainerStatus.paused: 'paused',
  ContainerStatus.restarting: 'restarting',
  ContainerStatus.dead: 'dead',
  ContainerStatus.removing: 'removing',
};

_ServerMetrics _$ServerMetricsFromJson(Map<String, dynamic> json) =>
    _ServerMetrics(
      totalCpuPercent: (json['totalCpuPercent'] as num?)?.toDouble() ?? 0.0,
      totalMemoryBytes: (json['totalMemoryBytes'] as num?)?.toInt() ?? 0,
      totalMemoryLimitBytes:
          (json['totalMemoryLimitBytes'] as num?)?.toInt() ?? 0,
      containersRunning: (json['containersRunning'] as num?)?.toInt() ?? 0,
      containersStopped: (json['containersStopped'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ServerMetricsToJson(_ServerMetrics instance) =>
    <String, dynamic>{
      'totalCpuPercent': instance.totalCpuPercent,
      'totalMemoryBytes': instance.totalMemoryBytes,
      'totalMemoryLimitBytes': instance.totalMemoryLimitBytes,
      'containersRunning': instance.containersRunning,
      'containersStopped': instance.containersStopped,
    };
