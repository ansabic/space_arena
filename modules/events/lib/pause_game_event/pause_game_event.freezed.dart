// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pause_game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PauseGameEvent _$PauseGameEventFromJson(Map<String, dynamic> json) {
  return _PauseGameEvent.fromJson(json);
}

/// @nodoc
mixin _$PauseGameEvent {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PauseGameEventCopyWith<$Res> {
  factory $PauseGameEventCopyWith(
          PauseGameEvent value, $Res Function(PauseGameEvent) then) =
      _$PauseGameEventCopyWithImpl<$Res, PauseGameEvent>;
}

/// @nodoc
class _$PauseGameEventCopyWithImpl<$Res, $Val extends PauseGameEvent>
    implements $PauseGameEventCopyWith<$Res> {
  _$PauseGameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PauseGameEventCopyWith<$Res> {
  factory _$$_PauseGameEventCopyWith(
          _$_PauseGameEvent value, $Res Function(_$_PauseGameEvent) then) =
      __$$_PauseGameEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PauseGameEventCopyWithImpl<$Res>
    extends _$PauseGameEventCopyWithImpl<$Res, _$_PauseGameEvent>
    implements _$$_PauseGameEventCopyWith<$Res> {
  __$$_PauseGameEventCopyWithImpl(
      _$_PauseGameEvent _value, $Res Function(_$_PauseGameEvent) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_PauseGameEvent extends _PauseGameEvent {
  const _$_PauseGameEvent() : super._();

  factory _$_PauseGameEvent.fromJson(Map<String, dynamic> json) =>
      _$$_PauseGameEventFromJson(json);

  @override
  String toString() {
    return 'PauseGameEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PauseGameEvent);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_PauseGameEventToJson(
      this,
    );
  }
}

abstract class _PauseGameEvent extends PauseGameEvent {
  const factory _PauseGameEvent() = _$_PauseGameEvent;
  const _PauseGameEvent._() : super._();

  factory _PauseGameEvent.fromJson(Map<String, dynamic> json) =
      _$_PauseGameEvent.fromJson;
}
