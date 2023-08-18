// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_sync_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StartSyncEvent _$StartSyncEventFromJson(Map<String, dynamic> json) {
  return _StartSyncEvent.fromJson(json);
}

/// @nodoc
mixin _$StartSyncEvent {
  Team get disconnected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartSyncEventCopyWith<StartSyncEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartSyncEventCopyWith<$Res> {
  factory $StartSyncEventCopyWith(
          StartSyncEvent value, $Res Function(StartSyncEvent) then) =
      _$StartSyncEventCopyWithImpl<$Res, StartSyncEvent>;
  @useResult
  $Res call({Team disconnected});
}

/// @nodoc
class _$StartSyncEventCopyWithImpl<$Res, $Val extends StartSyncEvent>
    implements $StartSyncEventCopyWith<$Res> {
  _$StartSyncEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disconnected = null,
  }) {
    return _then(_value.copyWith(
      disconnected: null == disconnected
          ? _value.disconnected
          : disconnected // ignore: cast_nullable_to_non_nullable
              as Team,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartSyncEventCopyWith<$Res>
    implements $StartSyncEventCopyWith<$Res> {
  factory _$$_StartSyncEventCopyWith(
          _$_StartSyncEvent value, $Res Function(_$_StartSyncEvent) then) =
      __$$_StartSyncEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Team disconnected});
}

/// @nodoc
class __$$_StartSyncEventCopyWithImpl<$Res>
    extends _$StartSyncEventCopyWithImpl<$Res, _$_StartSyncEvent>
    implements _$$_StartSyncEventCopyWith<$Res> {
  __$$_StartSyncEventCopyWithImpl(
      _$_StartSyncEvent _value, $Res Function(_$_StartSyncEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disconnected = null,
  }) {
    return _then(_$_StartSyncEvent(
      disconnected: null == disconnected
          ? _value.disconnected
          : disconnected // ignore: cast_nullable_to_non_nullable
              as Team,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StartSyncEvent extends _StartSyncEvent {
  const _$_StartSyncEvent({required this.disconnected}) : super._();

  factory _$_StartSyncEvent.fromJson(Map<String, dynamic> json) =>
      _$$_StartSyncEventFromJson(json);

  @override
  final Team disconnected;

  @override
  String toString() {
    return 'StartSyncEvent(disconnected: $disconnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartSyncEvent &&
            (identical(other.disconnected, disconnected) ||
                other.disconnected == disconnected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, disconnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartSyncEventCopyWith<_$_StartSyncEvent> get copyWith =>
      __$$_StartSyncEventCopyWithImpl<_$_StartSyncEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartSyncEventToJson(
      this,
    );
  }
}

abstract class _StartSyncEvent extends StartSyncEvent {
  const factory _StartSyncEvent({required final Team disconnected}) =
      _$_StartSyncEvent;
  const _StartSyncEvent._() : super._();

  factory _StartSyncEvent.fromJson(Map<String, dynamic> json) =
      _$_StartSyncEvent.fromJson;

  @override
  Team get disconnected;
  @override
  @JsonKey(ignore: true)
  _$$_StartSyncEventCopyWith<_$_StartSyncEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
