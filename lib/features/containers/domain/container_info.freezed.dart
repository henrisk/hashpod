// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'container_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContainerPort {

 int get privatePort; int? get publicPort; String get type;
/// Create a copy of ContainerPort
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContainerPortCopyWith<ContainerPort> get copyWith => _$ContainerPortCopyWithImpl<ContainerPort>(this as ContainerPort, _$identity);

  /// Serializes this ContainerPort to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContainerPort&&(identical(other.privatePort, privatePort) || other.privatePort == privatePort)&&(identical(other.publicPort, publicPort) || other.publicPort == publicPort)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,privatePort,publicPort,type);

@override
String toString() {
  return 'ContainerPort(privatePort: $privatePort, publicPort: $publicPort, type: $type)';
}


}

/// @nodoc
abstract mixin class $ContainerPortCopyWith<$Res>  {
  factory $ContainerPortCopyWith(ContainerPort value, $Res Function(ContainerPort) _then) = _$ContainerPortCopyWithImpl;
@useResult
$Res call({
 int privatePort, int? publicPort, String type
});




}
/// @nodoc
class _$ContainerPortCopyWithImpl<$Res>
    implements $ContainerPortCopyWith<$Res> {
  _$ContainerPortCopyWithImpl(this._self, this._then);

  final ContainerPort _self;
  final $Res Function(ContainerPort) _then;

/// Create a copy of ContainerPort
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? privatePort = null,Object? publicPort = freezed,Object? type = null,}) {
  return _then(_self.copyWith(
privatePort: null == privatePort ? _self.privatePort : privatePort // ignore: cast_nullable_to_non_nullable
as int,publicPort: freezed == publicPort ? _self.publicPort : publicPort // ignore: cast_nullable_to_non_nullable
as int?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ContainerPort].
extension ContainerPortPatterns on ContainerPort {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContainerPort value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContainerPort() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContainerPort value)  $default,){
final _that = this;
switch (_that) {
case _ContainerPort():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContainerPort value)?  $default,){
final _that = this;
switch (_that) {
case _ContainerPort() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int privatePort,  int? publicPort,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContainerPort() when $default != null:
return $default(_that.privatePort,_that.publicPort,_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int privatePort,  int? publicPort,  String type)  $default,) {final _that = this;
switch (_that) {
case _ContainerPort():
return $default(_that.privatePort,_that.publicPort,_that.type);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int privatePort,  int? publicPort,  String type)?  $default,) {final _that = this;
switch (_that) {
case _ContainerPort() when $default != null:
return $default(_that.privatePort,_that.publicPort,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContainerPort implements ContainerPort {
  const _ContainerPort({required this.privatePort, this.publicPort, this.type = 'tcp'});
  factory _ContainerPort.fromJson(Map<String, dynamic> json) => _$ContainerPortFromJson(json);

@override final  int privatePort;
@override final  int? publicPort;
@override@JsonKey() final  String type;

/// Create a copy of ContainerPort
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContainerPortCopyWith<_ContainerPort> get copyWith => __$ContainerPortCopyWithImpl<_ContainerPort>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContainerPortToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContainerPort&&(identical(other.privatePort, privatePort) || other.privatePort == privatePort)&&(identical(other.publicPort, publicPort) || other.publicPort == publicPort)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,privatePort,publicPort,type);

@override
String toString() {
  return 'ContainerPort(privatePort: $privatePort, publicPort: $publicPort, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ContainerPortCopyWith<$Res> implements $ContainerPortCopyWith<$Res> {
  factory _$ContainerPortCopyWith(_ContainerPort value, $Res Function(_ContainerPort) _then) = __$ContainerPortCopyWithImpl;
@override @useResult
$Res call({
 int privatePort, int? publicPort, String type
});




}
/// @nodoc
class __$ContainerPortCopyWithImpl<$Res>
    implements _$ContainerPortCopyWith<$Res> {
  __$ContainerPortCopyWithImpl(this._self, this._then);

  final _ContainerPort _self;
  final $Res Function(_ContainerPort) _then;

/// Create a copy of ContainerPort
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? privatePort = null,Object? publicPort = freezed,Object? type = null,}) {
  return _then(_ContainerPort(
privatePort: null == privatePort ? _self.privatePort : privatePort // ignore: cast_nullable_to_non_nullable
as int,publicPort: freezed == publicPort ? _self.publicPort : publicPort // ignore: cast_nullable_to_non_nullable
as int?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ContainerStats {

 double get cpuPercent; int get memoryBytes; int get memoryLimitBytes; List<double> get cpuHistory;// last N seconds for sparkline
 List<double> get ramHistory;
/// Create a copy of ContainerStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContainerStatsCopyWith<ContainerStats> get copyWith => _$ContainerStatsCopyWithImpl<ContainerStats>(this as ContainerStats, _$identity);

  /// Serializes this ContainerStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContainerStats&&(identical(other.cpuPercent, cpuPercent) || other.cpuPercent == cpuPercent)&&(identical(other.memoryBytes, memoryBytes) || other.memoryBytes == memoryBytes)&&(identical(other.memoryLimitBytes, memoryLimitBytes) || other.memoryLimitBytes == memoryLimitBytes)&&const DeepCollectionEquality().equals(other.cpuHistory, cpuHistory)&&const DeepCollectionEquality().equals(other.ramHistory, ramHistory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cpuPercent,memoryBytes,memoryLimitBytes,const DeepCollectionEquality().hash(cpuHistory),const DeepCollectionEquality().hash(ramHistory));

@override
String toString() {
  return 'ContainerStats(cpuPercent: $cpuPercent, memoryBytes: $memoryBytes, memoryLimitBytes: $memoryLimitBytes, cpuHistory: $cpuHistory, ramHistory: $ramHistory)';
}


}

/// @nodoc
abstract mixin class $ContainerStatsCopyWith<$Res>  {
  factory $ContainerStatsCopyWith(ContainerStats value, $Res Function(ContainerStats) _then) = _$ContainerStatsCopyWithImpl;
@useResult
$Res call({
 double cpuPercent, int memoryBytes, int memoryLimitBytes, List<double> cpuHistory, List<double> ramHistory
});




}
/// @nodoc
class _$ContainerStatsCopyWithImpl<$Res>
    implements $ContainerStatsCopyWith<$Res> {
  _$ContainerStatsCopyWithImpl(this._self, this._then);

  final ContainerStats _self;
  final $Res Function(ContainerStats) _then;

/// Create a copy of ContainerStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cpuPercent = null,Object? memoryBytes = null,Object? memoryLimitBytes = null,Object? cpuHistory = null,Object? ramHistory = null,}) {
  return _then(_self.copyWith(
cpuPercent: null == cpuPercent ? _self.cpuPercent : cpuPercent // ignore: cast_nullable_to_non_nullable
as double,memoryBytes: null == memoryBytes ? _self.memoryBytes : memoryBytes // ignore: cast_nullable_to_non_nullable
as int,memoryLimitBytes: null == memoryLimitBytes ? _self.memoryLimitBytes : memoryLimitBytes // ignore: cast_nullable_to_non_nullable
as int,cpuHistory: null == cpuHistory ? _self.cpuHistory : cpuHistory // ignore: cast_nullable_to_non_nullable
as List<double>,ramHistory: null == ramHistory ? _self.ramHistory : ramHistory // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// Adds pattern-matching-related methods to [ContainerStats].
extension ContainerStatsPatterns on ContainerStats {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContainerStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContainerStats() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContainerStats value)  $default,){
final _that = this;
switch (_that) {
case _ContainerStats():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContainerStats value)?  $default,){
final _that = this;
switch (_that) {
case _ContainerStats() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double cpuPercent,  int memoryBytes,  int memoryLimitBytes,  List<double> cpuHistory,  List<double> ramHistory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContainerStats() when $default != null:
return $default(_that.cpuPercent,_that.memoryBytes,_that.memoryLimitBytes,_that.cpuHistory,_that.ramHistory);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double cpuPercent,  int memoryBytes,  int memoryLimitBytes,  List<double> cpuHistory,  List<double> ramHistory)  $default,) {final _that = this;
switch (_that) {
case _ContainerStats():
return $default(_that.cpuPercent,_that.memoryBytes,_that.memoryLimitBytes,_that.cpuHistory,_that.ramHistory);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double cpuPercent,  int memoryBytes,  int memoryLimitBytes,  List<double> cpuHistory,  List<double> ramHistory)?  $default,) {final _that = this;
switch (_that) {
case _ContainerStats() when $default != null:
return $default(_that.cpuPercent,_that.memoryBytes,_that.memoryLimitBytes,_that.cpuHistory,_that.ramHistory);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContainerStats implements ContainerStats {
  const _ContainerStats({this.cpuPercent = 0.0, this.memoryBytes = 0, this.memoryLimitBytes = 0, final  List<double> cpuHistory = const [], final  List<double> ramHistory = const []}): _cpuHistory = cpuHistory,_ramHistory = ramHistory;
  factory _ContainerStats.fromJson(Map<String, dynamic> json) => _$ContainerStatsFromJson(json);

@override@JsonKey() final  double cpuPercent;
@override@JsonKey() final  int memoryBytes;
@override@JsonKey() final  int memoryLimitBytes;
 final  List<double> _cpuHistory;
@override@JsonKey() List<double> get cpuHistory {
  if (_cpuHistory is EqualUnmodifiableListView) return _cpuHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cpuHistory);
}

// last N seconds for sparkline
 final  List<double> _ramHistory;
// last N seconds for sparkline
@override@JsonKey() List<double> get ramHistory {
  if (_ramHistory is EqualUnmodifiableListView) return _ramHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ramHistory);
}


/// Create a copy of ContainerStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContainerStatsCopyWith<_ContainerStats> get copyWith => __$ContainerStatsCopyWithImpl<_ContainerStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContainerStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContainerStats&&(identical(other.cpuPercent, cpuPercent) || other.cpuPercent == cpuPercent)&&(identical(other.memoryBytes, memoryBytes) || other.memoryBytes == memoryBytes)&&(identical(other.memoryLimitBytes, memoryLimitBytes) || other.memoryLimitBytes == memoryLimitBytes)&&const DeepCollectionEquality().equals(other._cpuHistory, _cpuHistory)&&const DeepCollectionEquality().equals(other._ramHistory, _ramHistory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cpuPercent,memoryBytes,memoryLimitBytes,const DeepCollectionEquality().hash(_cpuHistory),const DeepCollectionEquality().hash(_ramHistory));

@override
String toString() {
  return 'ContainerStats(cpuPercent: $cpuPercent, memoryBytes: $memoryBytes, memoryLimitBytes: $memoryLimitBytes, cpuHistory: $cpuHistory, ramHistory: $ramHistory)';
}


}

/// @nodoc
abstract mixin class _$ContainerStatsCopyWith<$Res> implements $ContainerStatsCopyWith<$Res> {
  factory _$ContainerStatsCopyWith(_ContainerStats value, $Res Function(_ContainerStats) _then) = __$ContainerStatsCopyWithImpl;
@override @useResult
$Res call({
 double cpuPercent, int memoryBytes, int memoryLimitBytes, List<double> cpuHistory, List<double> ramHistory
});




}
/// @nodoc
class __$ContainerStatsCopyWithImpl<$Res>
    implements _$ContainerStatsCopyWith<$Res> {
  __$ContainerStatsCopyWithImpl(this._self, this._then);

  final _ContainerStats _self;
  final $Res Function(_ContainerStats) _then;

/// Create a copy of ContainerStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cpuPercent = null,Object? memoryBytes = null,Object? memoryLimitBytes = null,Object? cpuHistory = null,Object? ramHistory = null,}) {
  return _then(_ContainerStats(
cpuPercent: null == cpuPercent ? _self.cpuPercent : cpuPercent // ignore: cast_nullable_to_non_nullable
as double,memoryBytes: null == memoryBytes ? _self.memoryBytes : memoryBytes // ignore: cast_nullable_to_non_nullable
as int,memoryLimitBytes: null == memoryLimitBytes ? _self.memoryLimitBytes : memoryLimitBytes // ignore: cast_nullable_to_non_nullable
as int,cpuHistory: null == cpuHistory ? _self._cpuHistory : cpuHistory // ignore: cast_nullable_to_non_nullable
as List<double>,ramHistory: null == ramHistory ? _self._ramHistory : ramHistory // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}


/// @nodoc
mixin _$ContainerInfo {

 String get id; String get name; String get image; ContainerStatus get status; List<ContainerPort> get ports; ContainerStats? get stats; DateTime? get startedAt;
/// Create a copy of ContainerInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContainerInfoCopyWith<ContainerInfo> get copyWith => _$ContainerInfoCopyWithImpl<ContainerInfo>(this as ContainerInfo, _$identity);

  /// Serializes this ContainerInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContainerInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.ports, ports)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,status,const DeepCollectionEquality().hash(ports),stats,startedAt);

@override
String toString() {
  return 'ContainerInfo(id: $id, name: $name, image: $image, status: $status, ports: $ports, stats: $stats, startedAt: $startedAt)';
}


}

/// @nodoc
abstract mixin class $ContainerInfoCopyWith<$Res>  {
  factory $ContainerInfoCopyWith(ContainerInfo value, $Res Function(ContainerInfo) _then) = _$ContainerInfoCopyWithImpl;
@useResult
$Res call({
 String id, String name, String image, ContainerStatus status, List<ContainerPort> ports, ContainerStats? stats, DateTime? startedAt
});


$ContainerStatsCopyWith<$Res>? get stats;

}
/// @nodoc
class _$ContainerInfoCopyWithImpl<$Res>
    implements $ContainerInfoCopyWith<$Res> {
  _$ContainerInfoCopyWithImpl(this._self, this._then);

  final ContainerInfo _self;
  final $Res Function(ContainerInfo) _then;

/// Create a copy of ContainerInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? status = null,Object? ports = null,Object? stats = freezed,Object? startedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ContainerStatus,ports: null == ports ? _self.ports : ports // ignore: cast_nullable_to_non_nullable
as List<ContainerPort>,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as ContainerStats?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of ContainerInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContainerStatsCopyWith<$Res>? get stats {
    if (_self.stats == null) {
    return null;
  }

  return $ContainerStatsCopyWith<$Res>(_self.stats!, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// Adds pattern-matching-related methods to [ContainerInfo].
extension ContainerInfoPatterns on ContainerInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContainerInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContainerInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContainerInfo value)  $default,){
final _that = this;
switch (_that) {
case _ContainerInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContainerInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ContainerInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String image,  ContainerStatus status,  List<ContainerPort> ports,  ContainerStats? stats,  DateTime? startedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContainerInfo() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.status,_that.ports,_that.stats,_that.startedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String image,  ContainerStatus status,  List<ContainerPort> ports,  ContainerStats? stats,  DateTime? startedAt)  $default,) {final _that = this;
switch (_that) {
case _ContainerInfo():
return $default(_that.id,_that.name,_that.image,_that.status,_that.ports,_that.stats,_that.startedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String image,  ContainerStatus status,  List<ContainerPort> ports,  ContainerStats? stats,  DateTime? startedAt)?  $default,) {final _that = this;
switch (_that) {
case _ContainerInfo() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.status,_that.ports,_that.stats,_that.startedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContainerInfo implements ContainerInfo {
  const _ContainerInfo({required this.id, required this.name, required this.image, required this.status, final  List<ContainerPort> ports = const [], this.stats, this.startedAt}): _ports = ports;
  factory _ContainerInfo.fromJson(Map<String, dynamic> json) => _$ContainerInfoFromJson(json);

@override final  String id;
@override final  String name;
@override final  String image;
@override final  ContainerStatus status;
 final  List<ContainerPort> _ports;
@override@JsonKey() List<ContainerPort> get ports {
  if (_ports is EqualUnmodifiableListView) return _ports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ports);
}

@override final  ContainerStats? stats;
@override final  DateTime? startedAt;

/// Create a copy of ContainerInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContainerInfoCopyWith<_ContainerInfo> get copyWith => __$ContainerInfoCopyWithImpl<_ContainerInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContainerInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContainerInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._ports, _ports)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image,status,const DeepCollectionEquality().hash(_ports),stats,startedAt);

@override
String toString() {
  return 'ContainerInfo(id: $id, name: $name, image: $image, status: $status, ports: $ports, stats: $stats, startedAt: $startedAt)';
}


}

/// @nodoc
abstract mixin class _$ContainerInfoCopyWith<$Res> implements $ContainerInfoCopyWith<$Res> {
  factory _$ContainerInfoCopyWith(_ContainerInfo value, $Res Function(_ContainerInfo) _then) = __$ContainerInfoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String image, ContainerStatus status, List<ContainerPort> ports, ContainerStats? stats, DateTime? startedAt
});


@override $ContainerStatsCopyWith<$Res>? get stats;

}
/// @nodoc
class __$ContainerInfoCopyWithImpl<$Res>
    implements _$ContainerInfoCopyWith<$Res> {
  __$ContainerInfoCopyWithImpl(this._self, this._then);

  final _ContainerInfo _self;
  final $Res Function(_ContainerInfo) _then;

/// Create a copy of ContainerInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? status = null,Object? ports = null,Object? stats = freezed,Object? startedAt = freezed,}) {
  return _then(_ContainerInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ContainerStatus,ports: null == ports ? _self._ports : ports // ignore: cast_nullable_to_non_nullable
as List<ContainerPort>,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as ContainerStats?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of ContainerInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContainerStatsCopyWith<$Res>? get stats {
    if (_self.stats == null) {
    return null;
  }

  return $ContainerStatsCopyWith<$Res>(_self.stats!, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// @nodoc
mixin _$ServerMetrics {

 double get totalCpuPercent; int get totalMemoryBytes; int get totalMemoryLimitBytes; int get containersRunning; int get containersStopped;
/// Create a copy of ServerMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerMetricsCopyWith<ServerMetrics> get copyWith => _$ServerMetricsCopyWithImpl<ServerMetrics>(this as ServerMetrics, _$identity);

  /// Serializes this ServerMetrics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerMetrics&&(identical(other.totalCpuPercent, totalCpuPercent) || other.totalCpuPercent == totalCpuPercent)&&(identical(other.totalMemoryBytes, totalMemoryBytes) || other.totalMemoryBytes == totalMemoryBytes)&&(identical(other.totalMemoryLimitBytes, totalMemoryLimitBytes) || other.totalMemoryLimitBytes == totalMemoryLimitBytes)&&(identical(other.containersRunning, containersRunning) || other.containersRunning == containersRunning)&&(identical(other.containersStopped, containersStopped) || other.containersStopped == containersStopped));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCpuPercent,totalMemoryBytes,totalMemoryLimitBytes,containersRunning,containersStopped);

@override
String toString() {
  return 'ServerMetrics(totalCpuPercent: $totalCpuPercent, totalMemoryBytes: $totalMemoryBytes, totalMemoryLimitBytes: $totalMemoryLimitBytes, containersRunning: $containersRunning, containersStopped: $containersStopped)';
}


}

/// @nodoc
abstract mixin class $ServerMetricsCopyWith<$Res>  {
  factory $ServerMetricsCopyWith(ServerMetrics value, $Res Function(ServerMetrics) _then) = _$ServerMetricsCopyWithImpl;
@useResult
$Res call({
 double totalCpuPercent, int totalMemoryBytes, int totalMemoryLimitBytes, int containersRunning, int containersStopped
});




}
/// @nodoc
class _$ServerMetricsCopyWithImpl<$Res>
    implements $ServerMetricsCopyWith<$Res> {
  _$ServerMetricsCopyWithImpl(this._self, this._then);

  final ServerMetrics _self;
  final $Res Function(ServerMetrics) _then;

/// Create a copy of ServerMetrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCpuPercent = null,Object? totalMemoryBytes = null,Object? totalMemoryLimitBytes = null,Object? containersRunning = null,Object? containersStopped = null,}) {
  return _then(_self.copyWith(
totalCpuPercent: null == totalCpuPercent ? _self.totalCpuPercent : totalCpuPercent // ignore: cast_nullable_to_non_nullable
as double,totalMemoryBytes: null == totalMemoryBytes ? _self.totalMemoryBytes : totalMemoryBytes // ignore: cast_nullable_to_non_nullable
as int,totalMemoryLimitBytes: null == totalMemoryLimitBytes ? _self.totalMemoryLimitBytes : totalMemoryLimitBytes // ignore: cast_nullable_to_non_nullable
as int,containersRunning: null == containersRunning ? _self.containersRunning : containersRunning // ignore: cast_nullable_to_non_nullable
as int,containersStopped: null == containersStopped ? _self.containersStopped : containersStopped // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ServerMetrics].
extension ServerMetricsPatterns on ServerMetrics {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServerMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServerMetrics() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServerMetrics value)  $default,){
final _that = this;
switch (_that) {
case _ServerMetrics():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServerMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _ServerMetrics() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double totalCpuPercent,  int totalMemoryBytes,  int totalMemoryLimitBytes,  int containersRunning,  int containersStopped)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServerMetrics() when $default != null:
return $default(_that.totalCpuPercent,_that.totalMemoryBytes,_that.totalMemoryLimitBytes,_that.containersRunning,_that.containersStopped);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double totalCpuPercent,  int totalMemoryBytes,  int totalMemoryLimitBytes,  int containersRunning,  int containersStopped)  $default,) {final _that = this;
switch (_that) {
case _ServerMetrics():
return $default(_that.totalCpuPercent,_that.totalMemoryBytes,_that.totalMemoryLimitBytes,_that.containersRunning,_that.containersStopped);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double totalCpuPercent,  int totalMemoryBytes,  int totalMemoryLimitBytes,  int containersRunning,  int containersStopped)?  $default,) {final _that = this;
switch (_that) {
case _ServerMetrics() when $default != null:
return $default(_that.totalCpuPercent,_that.totalMemoryBytes,_that.totalMemoryLimitBytes,_that.containersRunning,_that.containersStopped);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServerMetrics implements ServerMetrics {
  const _ServerMetrics({this.totalCpuPercent = 0.0, this.totalMemoryBytes = 0, this.totalMemoryLimitBytes = 0, this.containersRunning = 0, this.containersStopped = 0});
  factory _ServerMetrics.fromJson(Map<String, dynamic> json) => _$ServerMetricsFromJson(json);

@override@JsonKey() final  double totalCpuPercent;
@override@JsonKey() final  int totalMemoryBytes;
@override@JsonKey() final  int totalMemoryLimitBytes;
@override@JsonKey() final  int containersRunning;
@override@JsonKey() final  int containersStopped;

/// Create a copy of ServerMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerMetricsCopyWith<_ServerMetrics> get copyWith => __$ServerMetricsCopyWithImpl<_ServerMetrics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerMetricsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerMetrics&&(identical(other.totalCpuPercent, totalCpuPercent) || other.totalCpuPercent == totalCpuPercent)&&(identical(other.totalMemoryBytes, totalMemoryBytes) || other.totalMemoryBytes == totalMemoryBytes)&&(identical(other.totalMemoryLimitBytes, totalMemoryLimitBytes) || other.totalMemoryLimitBytes == totalMemoryLimitBytes)&&(identical(other.containersRunning, containersRunning) || other.containersRunning == containersRunning)&&(identical(other.containersStopped, containersStopped) || other.containersStopped == containersStopped));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCpuPercent,totalMemoryBytes,totalMemoryLimitBytes,containersRunning,containersStopped);

@override
String toString() {
  return 'ServerMetrics(totalCpuPercent: $totalCpuPercent, totalMemoryBytes: $totalMemoryBytes, totalMemoryLimitBytes: $totalMemoryLimitBytes, containersRunning: $containersRunning, containersStopped: $containersStopped)';
}


}

/// @nodoc
abstract mixin class _$ServerMetricsCopyWith<$Res> implements $ServerMetricsCopyWith<$Res> {
  factory _$ServerMetricsCopyWith(_ServerMetrics value, $Res Function(_ServerMetrics) _then) = __$ServerMetricsCopyWithImpl;
@override @useResult
$Res call({
 double totalCpuPercent, int totalMemoryBytes, int totalMemoryLimitBytes, int containersRunning, int containersStopped
});




}
/// @nodoc
class __$ServerMetricsCopyWithImpl<$Res>
    implements _$ServerMetricsCopyWith<$Res> {
  __$ServerMetricsCopyWithImpl(this._self, this._then);

  final _ServerMetrics _self;
  final $Res Function(_ServerMetrics) _then;

/// Create a copy of ServerMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCpuPercent = null,Object? totalMemoryBytes = null,Object? totalMemoryLimitBytes = null,Object? containersRunning = null,Object? containersStopped = null,}) {
  return _then(_ServerMetrics(
totalCpuPercent: null == totalCpuPercent ? _self.totalCpuPercent : totalCpuPercent // ignore: cast_nullable_to_non_nullable
as double,totalMemoryBytes: null == totalMemoryBytes ? _self.totalMemoryBytes : totalMemoryBytes // ignore: cast_nullable_to_non_nullable
as int,totalMemoryLimitBytes: null == totalMemoryLimitBytes ? _self.totalMemoryLimitBytes : totalMemoryLimitBytes // ignore: cast_nullable_to_non_nullable
as int,containersRunning: null == containersRunning ? _self.containersRunning : containersRunning // ignore: cast_nullable_to_non_nullable
as int,containersStopped: null == containersStopped ? _self.containersStopped : containersStopped // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
