// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_part_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePartEvent _$CreatePartEventFromJson(Map<String, dynamic> json) {
  return _CreatePartEvent.fromJson(json);
}

/// @nodoc
mixin _$CreatePartEvent {
  Team get team => throw _privateConstructorUsedError;

  int get from => throw _privateConstructorUsedError;

  PartSide get side => throw _privateConstructorUsedError;

  PartType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePartEventCopyWith<CreatePartEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePartEventCopyWith<$Res> {
  factory $CreatePartEventCopyWith(CreatePartEvent value, $Res Function(CreatePartEvent) then) =
      _$CreatePartEventCopyWithImpl<$Res, CreatePartEvent>;

  @useResult
  $Res call({Team team, int from, PartSide side, PartType type});
}

/// @nodoc
class _$CreatePartEventCopyWithImpl<$Res, $Val extends CreatePartEvent> implements $CreatePartEventCopyWith<$Res> {
  _$CreatePartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? from = null,
    Object? side = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as PartSide,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PartType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatePartEventCopyWith<$Res> implements $CreatePartEventCopyWith<$Res> {
  factory _$$_CreatePartEventCopyWith(_$_CreatePartEvent value, $Res Function(_$_CreatePartEvent) then) =
      __$$_CreatePartEventCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({Team team, int from, PartSide side, PartType type});
}

/// @nodoc
class __$$_CreatePartEventCopyWithImpl<$Res> extends _$CreatePartEventCopyWithImpl<$Res, _$_CreatePartEvent>
    implements _$$_CreatePartEventCopyWith<$Res> {
  __$$_CreatePartEventCopyWithImpl(_$_CreatePartEvent _value, $Res Function(_$_CreatePartEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? from = null,
    Object? side = null,
    Object? type = null,
  }) {
    return _then(_$_CreatePartEvent(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as PartSide,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PartType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatePartEvent extends _CreatePartEvent {
  const _$_CreatePartEvent({required this.team, required this.from, required this.side, required this.type})
      : super._();

  factory _$_CreatePartEvent.fromJson(Map<String, dynamic> json) => _$$_CreatePartEventFromJson(json);

  @override
  final Team team;
  @override
  final int from;
  @override
  final PartSide side;
  @override
  final PartType type;

  @override
  String toString() {
    return 'CreatePartEvent(team: $team, from: $from, side: $side, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePartEvent &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, team, from, side, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePartEventCopyWith<_$_CreatePartEvent> get copyWith =>
      __$$_CreatePartEventCopyWithImpl<_$_CreatePartEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePartEventToJson(
      this,
    );
  }
}

abstract class _CreatePartEvent extends CreatePartEvent {
  const factory _CreatePartEvent(
      {required final Team team,
      required final int from,
      required final PartSide side,
      required final PartType type}) = _$_CreatePartEvent;

  const _CreatePartEvent._() : super._();

  factory _CreatePartEvent.fromJson(Map<String, dynamic> json) = _$_CreatePartEvent.fromJson;

  @override
  Team get team;

  @override
  int get from;

  @override
  PartSide get side;

  @override
  PartType get type;

  @override
  @JsonKey(ignore: true)
  _$$_CreatePartEventCopyWith<_$_CreatePartEvent> get copyWith => throw _privateConstructorUsedError;
}
