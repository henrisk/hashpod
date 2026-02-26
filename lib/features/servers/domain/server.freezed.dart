// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Server {

 String get id; String get displayName; ContainerManager get manager; ConnectionType get connectionType;// Connection details (SSH)
 String get host; int get port; String get sshUser; String get privateKeyPath;// Local socket (Docker / Podman)
 String get socketPath;// Runtime state (not persisted)
 ServerStatus get status;
/// Create a copy of Server
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerCopyWith<Server> get copyWith => _$ServerCopyWithImpl<Server>(this as Server, _$identity);

  /// Serializes this Server to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Server&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.manager, manager) || other.manager == manager)&&(identical(other.connectionType, connectionType) || other.connectionType == connectionType)&&(identical(other.host, host) || other.host == host)&&(identical(other.port, port) || other.port == port)&&(identical(other.sshUser, sshUser) || other.sshUser == sshUser)&&(identical(other.privateKeyPath, privateKeyPath) || other.privateKeyPath == privateKeyPath)&&(identical(other.socketPath, socketPath) || other.socketPath == socketPath)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,manager,connectionType,host,port,sshUser,privateKeyPath,socketPath,status);

@override
String toString() {
  return 'Server(id: $id, displayName: $displayName, manager: $manager, connectionType: $connectionType, host: $host, port: $port, sshUser: $sshUser, privateKeyPath: $privateKeyPath, socketPath: $socketPath, status: $status)';
}


}

/// @nodoc
abstract mixin class $ServerCopyWith<$Res>  {
  factory $ServerCopyWith(Server value, $Res Function(Server) _then) = _$ServerCopyWithImpl;
@useResult
$Res call({
 String id, String displayName, ContainerManager manager, ConnectionType connectionType, String host, int port, String sshUser, String privateKeyPath, String socketPath, ServerStatus status
});




}
/// @nodoc
class _$ServerCopyWithImpl<$Res>
    implements $ServerCopyWith<$Res> {
  _$ServerCopyWithImpl(this._self, this._then);

  final Server _self;
  final $Res Function(Server) _then;

/// Create a copy of Server
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? displayName = null,Object? manager = null,Object? connectionType = null,Object? host = null,Object? port = null,Object? sshUser = null,Object? privateKeyPath = null,Object? socketPath = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,manager: null == manager ? _self.manager : manager // ignore: cast_nullable_to_non_nullable
as ContainerManager,connectionType: null == connectionType ? _self.connectionType : connectionType // ignore: cast_nullable_to_non_nullable
as ConnectionType,host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int,sshUser: null == sshUser ? _self.sshUser : sshUser // ignore: cast_nullable_to_non_nullable
as String,privateKeyPath: null == privateKeyPath ? _self.privateKeyPath : privateKeyPath // ignore: cast_nullable_to_non_nullable
as String,socketPath: null == socketPath ? _self.socketPath : socketPath // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ServerStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [Server].
extension ServerPatterns on Server {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Server value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Server() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Server value)  $default,){
final _that = this;
switch (_that) {
case _Server():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Server value)?  $default,){
final _that = this;
switch (_that) {
case _Server() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String displayName,  ContainerManager manager,  ConnectionType connectionType,  String host,  int port,  String sshUser,  String privateKeyPath,  String socketPath,  ServerStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Server() when $default != null:
return $default(_that.id,_that.displayName,_that.manager,_that.connectionType,_that.host,_that.port,_that.sshUser,_that.privateKeyPath,_that.socketPath,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String displayName,  ContainerManager manager,  ConnectionType connectionType,  String host,  int port,  String sshUser,  String privateKeyPath,  String socketPath,  ServerStatus status)  $default,) {final _that = this;
switch (_that) {
case _Server():
return $default(_that.id,_that.displayName,_that.manager,_that.connectionType,_that.host,_that.port,_that.sshUser,_that.privateKeyPath,_that.socketPath,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String displayName,  ContainerManager manager,  ConnectionType connectionType,  String host,  int port,  String sshUser,  String privateKeyPath,  String socketPath,  ServerStatus status)?  $default,) {final _that = this;
switch (_that) {
case _Server() when $default != null:
return $default(_that.id,_that.displayName,_that.manager,_that.connectionType,_that.host,_that.port,_that.sshUser,_that.privateKeyPath,_that.socketPath,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Server implements Server {
  const _Server({required this.id, required this.displayName, this.manager = ContainerManager.docker, this.connectionType = ConnectionType.remote, this.host = '', this.port = 22, this.sshUser = '', this.privateKeyPath = '', this.socketPath = '/var/run/docker.sock', this.status = ServerStatus.unknown});
  factory _Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);

@override final  String id;
@override final  String displayName;
@override@JsonKey() final  ContainerManager manager;
@override@JsonKey() final  ConnectionType connectionType;
// Connection details (SSH)
@override@JsonKey() final  String host;
@override@JsonKey() final  int port;
@override@JsonKey() final  String sshUser;
@override@JsonKey() final  String privateKeyPath;
// Local socket (Docker / Podman)
@override@JsonKey() final  String socketPath;
// Runtime state (not persisted)
@override@JsonKey() final  ServerStatus status;

/// Create a copy of Server
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerCopyWith<_Server> get copyWith => __$ServerCopyWithImpl<_Server>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Server&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.manager, manager) || other.manager == manager)&&(identical(other.connectionType, connectionType) || other.connectionType == connectionType)&&(identical(other.host, host) || other.host == host)&&(identical(other.port, port) || other.port == port)&&(identical(other.sshUser, sshUser) || other.sshUser == sshUser)&&(identical(other.privateKeyPath, privateKeyPath) || other.privateKeyPath == privateKeyPath)&&(identical(other.socketPath, socketPath) || other.socketPath == socketPath)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,manager,connectionType,host,port,sshUser,privateKeyPath,socketPath,status);

@override
String toString() {
  return 'Server(id: $id, displayName: $displayName, manager: $manager, connectionType: $connectionType, host: $host, port: $port, sshUser: $sshUser, privateKeyPath: $privateKeyPath, socketPath: $socketPath, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ServerCopyWith<$Res> implements $ServerCopyWith<$Res> {
  factory _$ServerCopyWith(_Server value, $Res Function(_Server) _then) = __$ServerCopyWithImpl;
@override @useResult
$Res call({
 String id, String displayName, ContainerManager manager, ConnectionType connectionType, String host, int port, String sshUser, String privateKeyPath, String socketPath, ServerStatus status
});




}
/// @nodoc
class __$ServerCopyWithImpl<$Res>
    implements _$ServerCopyWith<$Res> {
  __$ServerCopyWithImpl(this._self, this._then);

  final _Server _self;
  final $Res Function(_Server) _then;

/// Create a copy of Server
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? displayName = null,Object? manager = null,Object? connectionType = null,Object? host = null,Object? port = null,Object? sshUser = null,Object? privateKeyPath = null,Object? socketPath = null,Object? status = null,}) {
  return _then(_Server(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,manager: null == manager ? _self.manager : manager // ignore: cast_nullable_to_non_nullable
as ContainerManager,connectionType: null == connectionType ? _self.connectionType : connectionType // ignore: cast_nullable_to_non_nullable
as ConnectionType,host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int,sshUser: null == sshUser ? _self.sshUser : sshUser // ignore: cast_nullable_to_non_nullable
as String,privateKeyPath: null == privateKeyPath ? _self.privateKeyPath : privateKeyPath // ignore: cast_nullable_to_non_nullable
as String,socketPath: null == socketPath ? _self.socketPath : socketPath // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ServerStatus,
  ));
}


}

// dart format on
