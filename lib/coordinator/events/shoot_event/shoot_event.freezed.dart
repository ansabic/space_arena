// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shoot_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShootEvent _$ShootEventFromJson(Map<String, dynamic> json) {
  return _ShootEvent.fromJson(json);
}

/// @nodoc
mixin _$ShootEvent {
  int get playerId => throw _privateConstructorUsedError;

  double get startX => throw _privateConstructorUsedError;

  double get startY => throw _privateConstructorUsedError;

  double get dirX => throw _privateConstructorUsedError;

  double get dirY => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShootEventCopyWith<ShootEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShootEventCopyWith<$Res> {
  factory $ShootEventCopyWith(ShootEvent value, $Res Function(ShootEvent) then) =
      _$ShootEventCopyWithImpl<$Res, ShootEvent>;

  @useResult
  $Res call({int playerId, double startX, double startY, double dirX, double dirY});
}

/// @nodoc
class _$ShootEventCopyWithImpl<$Res, $Val extends ShootEvent> implements $ShootEventCopyWith<$Res> {
  _$ShootEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = null,
    Object? startX = null,
    Object? startY = null,
    Object? dirX = null,
    Object? dirY = null,
  }) {
    return _then(_value.copyWith(
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as int,
      startX: null == startX
          ? _value.startX
          : startX // ignore: cast_nullable_to_non_nullable
              as double,
      startY: null == startY
          ? _value.startY
          : startY // ignore: cast_nullable_to_non_nullable
              as double,
      dirX: null == dirX
          ? _value.dirX
          : dirX // ignore: cast_nullable_to_non_nullable
              as double,
      dirY: null == dirY
          ? _value.dirY
          : dirY // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShootEventCopyWith<$Res> implements $ShootEventCopyWith<$Res> {
  factory _$$_ShootEventCopyWith(_$_ShootEvent value, $Res Function(_$_ShootEvent) then) =
      __$$_ShootEventCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({int playerId, double startX, double startY, double dirX, double dirY});
}

/// @nodoc
class __$$_ShootEventCopyWithImpl<$Res> extends _$ShootEventCopyWithImpl<$Res, _$_ShootEvent>
    implements _$$_ShootEventCopyWith<$Res> {
  __$$_ShootEventCopyWithImpl(_$_ShootEvent _value, $Res Function(_$_ShootEvent) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = null,
    Object? startX = null,
    Object? startY = null,
    Object? dirX = null,
    Object? dirY = null,
  }) {
    return _then(_$_ShootEvent(
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as int,
      startX: null == startX
          ? _value.startX
          : startX // ignore: cast_nullable_to_non_nullable
              as double,
      startY: null == startY
          ? _value.startY
          : startY // ignore: cast_nullable_to_non_nullable
              as double,
      dirX: null == dirX
          ? _value.dirX
          : dirX // ignore: cast_nullable_to_non_nullable
              as double,
      dirY: null == dirY
          ? _value.dirY
          : dirY // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShootEvent extends _ShootEvent {
  const _$_ShootEvent(
      {required this.playerId, required this.startX, required this.startY, required this.dirX, required this.dirY})
      : super._();

  factory _$_ShootEvent.fromJson(Map<String, dynamic> json) => _$$_ShootEventFromJson(json);

  @override
  final int playerId;
  @override
  final double startX;
  @override
  final double startY;
  @override
  final double dirX;
  @override
  final double dirY;

  @override
  String toString() {
    return 'ShootEvent(playerId: $playerId, startX: $startX, startY: $startY, dirX: $dirX, dirY: $dirY)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShootEvent &&
            (identical(other.playerId, playerId) || other.playerId == playerId) &&
            (identical(other.startX, startX) || other.startX == startX) &&
            (identical(other.startY, startY) || other.startY == startY) &&
            (identical(other.dirX, dirX) || other.dirX == dirX) &&
            (identical(other.dirY, dirY) || other.dirY == dirY));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, playerId, startX, startY, dirX, dirY);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShootEventCopyWith<_$_ShootEvent> get copyWith => __$$_ShootEventCopyWithImpl<_$_ShootEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShootEventToJson(
      this,
    );
  }
}

abstract class _ShootEvent extends ShootEvent {
  const factory _ShootEvent(
      {required final int playerId,
      required final double startX,
      required final double startY,
      required final double dirX,
      required final double dirY}) = _$_ShootEvent;

  const _ShootEvent._() : super._();

  factory _ShootEvent.fromJson(Map<String, dynamic> json) = _$_ShootEvent.fromJson;

  @override
  int get playerId;

  @override
  double get startX;

  @override
  double get startY;

  @override
  double get dirX;

  @override
  double get dirY;

  @override
  @JsonKey(ignore: true)
  _$$_ShootEventCopyWith<_$_ShootEvent> get copyWith => throw _privateConstructorUsedError;
}
