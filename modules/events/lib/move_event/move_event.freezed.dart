// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoveEvent _$MoveEventFromJson(Map<String, dynamic> json) {
  return _MoveEvent.fromJson(json);
}

/// @nodoc
mixin _$MoveEvent {
  String get name => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveEventCopyWith<MoveEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveEventCopyWith<$Res> {
  factory $MoveEventCopyWith(MoveEvent value, $Res Function(MoveEvent) then) =
      _$MoveEventCopyWithImpl<$Res, MoveEvent>;
  @useResult
  $Res call({String name, double x, double y});
}

/// @nodoc
class _$MoveEventCopyWithImpl<$Res, $Val extends MoveEvent>
    implements $MoveEventCopyWith<$Res> {
  _$MoveEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MoveEventCopyWith<$Res> implements $MoveEventCopyWith<$Res> {
  factory _$$_MoveEventCopyWith(
          _$_MoveEvent value, $Res Function(_$_MoveEvent) then) =
      __$$_MoveEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double x, double y});
}

/// @nodoc
class __$$_MoveEventCopyWithImpl<$Res>
    extends _$MoveEventCopyWithImpl<$Res, _$_MoveEvent>
    implements _$$_MoveEventCopyWith<$Res> {
  __$$_MoveEventCopyWithImpl(
      _$_MoveEvent _value, $Res Function(_$_MoveEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_MoveEvent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoveEvent extends _MoveEvent {
  const _$_MoveEvent({required this.name, required this.x, required this.y})
      : super._();

  factory _$_MoveEvent.fromJson(Map<String, dynamic> json) =>
      _$$_MoveEventFromJson(json);

  @override
  final String name;
  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'MoveEvent(name: $name, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoveEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoveEventCopyWith<_$_MoveEvent> get copyWith =>
      __$$_MoveEventCopyWithImpl<_$_MoveEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoveEventToJson(
      this,
    );
  }
}

abstract class _MoveEvent extends MoveEvent {
  const factory _MoveEvent(
      {required final String name,
      required final double x,
      required final double y}) = _$_MoveEvent;
  const _MoveEvent._() : super._();

  factory _MoveEvent.fromJson(Map<String, dynamic> json) =
      _$_MoveEvent.fromJson;

  @override
  String get name;
  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$$_MoveEventCopyWith<_$_MoveEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
