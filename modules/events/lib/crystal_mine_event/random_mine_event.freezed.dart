// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_mine_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RandomMineEvent _$RandomMineEventFromJson(Map<String, dynamic> json) {
  return _RandomMineEvent.fromJson(json);
}

/// @nodoc
mixin _$RandomMineEvent {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  MineType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomMineEventCopyWith<RandomMineEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomMineEventCopyWith<$Res> {
  factory $RandomMineEventCopyWith(
          RandomMineEvent value, $Res Function(RandomMineEvent) then) =
      _$RandomMineEventCopyWithImpl<$Res, RandomMineEvent>;
  @useResult
  $Res call({double x, double y, MineType type});
}

/// @nodoc
class _$RandomMineEventCopyWithImpl<$Res, $Val extends RandomMineEvent>
    implements $RandomMineEventCopyWith<$Res> {
  _$RandomMineEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MineType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RandomMineEventCopyWith<$Res>
    implements $RandomMineEventCopyWith<$Res> {
  factory _$$_RandomMineEventCopyWith(
          _$_RandomMineEvent value, $Res Function(_$_RandomMineEvent) then) =
      __$$_RandomMineEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y, MineType type});
}

/// @nodoc
class __$$_RandomMineEventCopyWithImpl<$Res>
    extends _$RandomMineEventCopyWithImpl<$Res, _$_RandomMineEvent>
    implements _$$_RandomMineEventCopyWith<$Res> {
  __$$_RandomMineEventCopyWithImpl(
      _$_RandomMineEvent _value, $Res Function(_$_RandomMineEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? type = null,
  }) {
    return _then(_$_RandomMineEvent(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MineType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RandomMineEvent extends _RandomMineEvent {
  const _$_RandomMineEvent(
      {required this.x, required this.y, required this.type})
      : super._();

  factory _$_RandomMineEvent.fromJson(Map<String, dynamic> json) =>
      _$$_RandomMineEventFromJson(json);

  @override
  final double x;
  @override
  final double y;
  @override
  final MineType type;

  @override
  String toString() {
    return 'RandomMineEvent(x: $x, y: $y, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RandomMineEvent &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RandomMineEventCopyWith<_$_RandomMineEvent> get copyWith =>
      __$$_RandomMineEventCopyWithImpl<_$_RandomMineEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RandomMineEventToJson(
      this,
    );
  }
}

abstract class _RandomMineEvent extends RandomMineEvent {
  const factory _RandomMineEvent(
      {required final double x,
      required final double y,
      required final MineType type}) = _$_RandomMineEvent;
  const _RandomMineEvent._() : super._();

  factory _RandomMineEvent.fromJson(Map<String, dynamic> json) =
      _$_RandomMineEvent.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  MineType get type;
  @override
  @JsonKey(ignore: true)
  _$$_RandomMineEventCopyWith<_$_RandomMineEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
