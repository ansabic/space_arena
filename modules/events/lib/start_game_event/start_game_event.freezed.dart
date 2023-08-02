// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StartGameEvent _$StartGameEventFromJson(Map<String, dynamic> json) {
  return _StartGameEvent.fromJson(json);
}

/// @nodoc
mixin _$StartGameEvent {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartGameEventCopyWith<$Res> {
  factory $StartGameEventCopyWith(
          StartGameEvent value, $Res Function(StartGameEvent) then) =
      _$StartGameEventCopyWithImpl<$Res, StartGameEvent>;
}

/// @nodoc
class _$StartGameEventCopyWithImpl<$Res, $Val extends StartGameEvent>
    implements $StartGameEventCopyWith<$Res> {
  _$StartGameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartGameEventCopyWith<$Res> {
  factory _$$_StartGameEventCopyWith(
          _$_StartGameEvent value, $Res Function(_$_StartGameEvent) then) =
      __$$_StartGameEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartGameEventCopyWithImpl<$Res>
    extends _$StartGameEventCopyWithImpl<$Res, _$_StartGameEvent>
    implements _$$_StartGameEventCopyWith<$Res> {
  __$$_StartGameEventCopyWithImpl(
      _$_StartGameEvent _value, $Res Function(_$_StartGameEvent) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_StartGameEvent extends _StartGameEvent {
  const _$_StartGameEvent() : super._();

  factory _$_StartGameEvent.fromJson(Map<String, dynamic> json) =>
      _$$_StartGameEventFromJson(json);

  @override
  String toString() {
    return 'StartGameEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartGameEvent);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartGameEventToJson(
      this,
    );
  }
}

abstract class _StartGameEvent extends StartGameEvent {
  const factory _StartGameEvent() = _$_StartGameEvent;
  const _StartGameEvent._() : super._();

  factory _StartGameEvent.fromJson(Map<String, dynamic> json) =
      _$_StartGameEvent.fromJson;
}
