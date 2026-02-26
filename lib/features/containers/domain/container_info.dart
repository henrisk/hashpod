import 'package:freezed_annotation/freezed_annotation.dart';

part 'container_info.freezed.dart';
part 'container_info.g.dart';

// ---------------------------------------------------------------------------
// Enums
// ---------------------------------------------------------------------------

enum ContainerStatus { running, stopped, paused, restarting, dead, removing }

// ---------------------------------------------------------------------------
// ContainerPort model
// ---------------------------------------------------------------------------

@freezed
abstract class ContainerPort with _$ContainerPort {
  const factory ContainerPort({
    required int privatePort,
    int? publicPort,
    @Default('tcp') String type,
  }) = _ContainerPort;

  factory ContainerPort.fromJson(Map<String, dynamic> json) =>
      _$ContainerPortFromJson(json);
}

// ---------------------------------------------------------------------------
// ContainerStats (live metrics — holds sparkline history)
// ---------------------------------------------------------------------------

@freezed
abstract class ContainerStats with _$ContainerStats {
  const factory ContainerStats({
    @Default(0.0) double cpuPercent,
    @Default(0) int memoryBytes,
    @Default(0) int memoryLimitBytes,
    @Default([]) List<double> cpuHistory,  // last N seconds for sparkline
    @Default([]) List<double> ramHistory,  // last N seconds for sparkline
  }) = _ContainerStats;

  factory ContainerStats.fromJson(Map<String, dynamic> json) =>
      _$ContainerStatsFromJson(json);
}

// ---------------------------------------------------------------------------
// ContainerInfo model
// ---------------------------------------------------------------------------

@freezed
abstract class ContainerInfo with _$ContainerInfo {
  const factory ContainerInfo({
    required String id,
    required String name,
    required String image,
    required ContainerStatus status,
    @Default([]) List<ContainerPort> ports,
    ContainerStats? stats,
    DateTime? startedAt,
  }) = _ContainerInfo;

  factory ContainerInfo.fromJson(Map<String, dynamic> json) =>
      _$ContainerInfoFromJson(json);
}

// ---------------------------------------------------------------------------
// ServerMetrics (host-level summary)
// ---------------------------------------------------------------------------

@freezed
abstract class ServerMetrics with _$ServerMetrics {
  const factory ServerMetrics({
    @Default(0.0) double totalCpuPercent,
    @Default(0) int totalMemoryBytes,
    @Default(0) int totalMemoryLimitBytes,
    @Default(0) int containersRunning,
    @Default(0) int containersStopped,
  }) = _ServerMetrics;

  factory ServerMetrics.fromJson(Map<String, dynamic> json) =>
      _$ServerMetricsFromJson(json);
}
