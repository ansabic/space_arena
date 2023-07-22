// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResumeGameEvent _$ResumeGameEventFromJson(Map<String, dynamic> json) {
  return _ResumeGameEvent.fromJson(json);
}

/// @nodoc
mixin _$ResumeGameEvent {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeGameEventCopyWith<$Res> {
  factory $ResumeGameEventCopyWith(ResumeGameEvent value, $Res Function(ResumeGameEvent) then) =
      _$ResumeGameEventCopyWithImpl<$Res, ResumeGameEvent>;
}

/// @nodoc
class _$ResumeGameEventCopyWithImpl<$Res, $Val extends ResumeGameEvent> implements $ResumeGameEventCopyWith<$Res> {
  _$ResumeGameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ResumeGameEventCopyWith<$Res> {
  factory _$$_ResumeGameEventCopyWith(_$_ResumeGameEvent value, $Res Function(_$_ResumeGameEvent) then) =
      __$$_ResumeGameEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResumeGameEventCopyWithImpl<$Res> extends _$ResumeGameEventCopyWithImpl<$Res, _$_ResumeGameEvent>
    implements _$$_ResumeGameEventCopyWith<$Res> {
  __$$_ResumeGameEventCopyWithImpl(_$_ResumeGameEvent _value, $Res Function(_$_ResumeGameEvent) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_ResumeGameEvent extends _ResumeGameEvent {
  const _$_ResumeGameEvent() : super._();

  factory _$_ResumeGameEvent.fromJson(Map<String, dynamic> json) => _$$_ResumeGameEventFromJson(json);

  @override
  String toString() {
    return 'ResumeGameEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_ResumeGameEvent);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResumeGameEventToJson(
      this,
    );
  }
}

abstract class _ResumeGameEvent extends ResumeGameEvent {
  const factory _ResumeGameEvent() = _$_ResumeGameEvent;

  const _ResumeGameEvent._() : super._();

  factory _ResumeGameEvent.fromJson(Map<String, dynamic> json) = _$_ResumeGameEvent.fromJson;
}
