// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disconnect_player_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DisconnectPlayerEvent _$DisconnectPlayerEventFromJson(
    Map<String, dynamic> json) {
  return _DisconnectPlayerEvent.fromJson(json);
}

/// @nodoc
mixin _$DisconnectPlayerEvent {
  Team get team => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisconnectPlayerEventCopyWith<DisconnectPlayerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisconnectPlayerEventCopyWith<$Res> {
  factory $DisconnectPlayerEventCopyWith(DisconnectPlayerEvent value,
          $Res Function(DisconnectPlayerEvent) then) =
      _$DisconnectPlayerEventCopyWithImpl<$Res, DisconnectPlayerEvent>;
  @useResult
  $Res call({Team team});
}

/// @nodoc
class _$DisconnectPlayerEventCopyWithImpl<$Res,
        $Val extends DisconnectPlayerEvent>
    implements $DisconnectPlayerEventCopyWith<$Res> {
  _$DisconnectPlayerEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_DisconnectPlayerEventCopyWith<$Res>
    implements $DisconnectPlayerEventCopyWith<$Res> {
  factory _$$_DisconnectPlayerEventCopyWith(_$_DisconnectPlayerEvent value,
          $Res Function(_$_DisconnectPlayerEvent) then) =
      __$$_DisconnectPlayerEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Team team});
}

/// @nodoc
class __$$_DisconnectPlayerEventCopyWithImpl<$Res>
    extends _$DisconnectPlayerEventCopyWithImpl<$Res, _$_DisconnectPlayerEvent>
    implements _$$_DisconnectPlayerEventCopyWith<$Res> {
  __$$_DisconnectPlayerEventCopyWithImpl(_$_DisconnectPlayerEvent _value,
      $Res Function(_$_DisconnectPlayerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
  }) {
    return _then(_$_DisconnectPlayerEvent(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DisconnectPlayerEvent extends _DisconnectPlayerEvent {
  const _$_DisconnectPlayerEvent({required this.team}) : super._();

  factory _$_DisconnectPlayerEvent.fromJson(Map<String, dynamic> json) =>
      _$$_DisconnectPlayerEventFromJson(json);

  @override
  final Team team;

  @override
  String toString() {
    return 'DisconnectPlayerEvent(team: $team)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DisconnectPlayerEvent &&
            (identical(other.team, team) || other.team == team));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, team);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DisconnectPlayerEventCopyWith<_$_DisconnectPlayerEvent> get copyWith =>
      __$$_DisconnectPlayerEventCopyWithImpl<_$_DisconnectPlayerEvent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DisconnectPlayerEventToJson(
      this,
    );
  }
}

abstract class _DisconnectPlayerEvent extends DisconnectPlayerEvent {
  const factory _DisconnectPlayerEvent({required final Team team}) =
      _$_DisconnectPlayerEvent;
  const _DisconnectPlayerEvent._() : super._();

  factory _DisconnectPlayerEvent.fromJson(Map<String, dynamic> json) =
      _$_DisconnectPlayerEvent.fromJson;

  @override
  Team get team;
  @override
  @JsonKey(ignore: true)
  _$$_DisconnectPlayerEventCopyWith<_$_DisconnectPlayerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
