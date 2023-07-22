// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterEvent _$RegisterEventFromJson(Map<String, dynamic> json) {
  return _RegisterEvent.fromJson(json);
}

/// @nodoc
mixin _$RegisterEvent {
  Team get team => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEventCopyWith<RegisterEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;

  @useResult
  $Res call({Team team});
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent> implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterEventCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory _$$_RegisterEventCopyWith(_$_RegisterEvent value, $Res Function(_$_RegisterEvent) then) =
      __$$_RegisterEventCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({Team team});
}

/// @nodoc
class __$$_RegisterEventCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res, _$_RegisterEvent>
    implements _$$_RegisterEventCopyWith<$Res> {
  __$$_RegisterEventCopyWithImpl(_$_RegisterEvent _value, $Res Function(_$_RegisterEvent) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
  }) {
    return _then(_$_RegisterEvent(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterEvent extends _RegisterEvent {
  const _$_RegisterEvent({required this.team}) : super._();

  factory _$_RegisterEvent.fromJson(Map<String, dynamic> json) => _$$_RegisterEventFromJson(json);

  @override
  final Team team;

  @override
  String toString() {
    return 'RegisterEvent(team: $team)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterEvent &&
            (identical(other.team, team) || other.team == team));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, team);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterEventCopyWith<_$_RegisterEvent> get copyWith =>
      __$$_RegisterEventCopyWithImpl<_$_RegisterEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterEventToJson(
      this,
    );
  }
}

abstract class _RegisterEvent extends RegisterEvent {
  const factory _RegisterEvent({required final Team team}) = _$_RegisterEvent;

  const _RegisterEvent._() : super._();

  factory _RegisterEvent.fromJson(Map<String, dynamic> json) = _$_RegisterEvent.fromJson;

  @override
  Team get team;

  @override
  @JsonKey(ignore: true)
  _$$_RegisterEventCopyWith<_$_RegisterEvent> get copyWith => throw _privateConstructorUsedError;
}
