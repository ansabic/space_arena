// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'damage_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DamageEvent _$DamageEventFromJson(Map<String, dynamic> json) {
  return _DamageEvent.fromJson(json);
}

/// @nodoc
mixin _$DamageEvent {
  int get characterId => throw _privateConstructorUsedError;
  int get damage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DamageEventCopyWith<DamageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DamageEventCopyWith<$Res> {
  factory $DamageEventCopyWith(
          DamageEvent value, $Res Function(DamageEvent) then) =
      _$DamageEventCopyWithImpl<$Res, DamageEvent>;
  @useResult
  $Res call({int characterId, int damage});
}

/// @nodoc
class _$DamageEventCopyWithImpl<$Res, $Val extends DamageEvent>
    implements $DamageEventCopyWith<$Res> {
  _$DamageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterId = null,
    Object? damage = null,
  }) {
    return _then(_value.copyWith(
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DamageEventCopyWith<$Res>
    implements $DamageEventCopyWith<$Res> {
  factory _$$_DamageEventCopyWith(
          _$_DamageEvent value, $Res Function(_$_DamageEvent) then) =
      __$$_DamageEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int characterId, int damage});
}

/// @nodoc
class __$$_DamageEventCopyWithImpl<$Res>
    extends _$DamageEventCopyWithImpl<$Res, _$_DamageEvent>
    implements _$$_DamageEventCopyWith<$Res> {
  __$$_DamageEventCopyWithImpl(
      _$_DamageEvent _value, $Res Function(_$_DamageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterId = null,
    Object? damage = null,
  }) {
    return _then(_$_DamageEvent(
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DamageEvent extends _DamageEvent {
  const _$_DamageEvent({required this.characterId, required this.damage})
      : super._();

  factory _$_DamageEvent.fromJson(Map<String, dynamic> json) =>
      _$$_DamageEventFromJson(json);

  @override
  final int characterId;
  @override
  final int damage;

  @override
  String toString() {
    return 'DamageEvent(characterId: $characterId, damage: $damage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DamageEvent &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId) &&
            (identical(other.damage, damage) || other.damage == damage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, characterId, damage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DamageEventCopyWith<_$_DamageEvent> get copyWith =>
      __$$_DamageEventCopyWithImpl<_$_DamageEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DamageEventToJson(
      this,
    );
  }
}

abstract class _DamageEvent extends DamageEvent {
  const factory _DamageEvent(
      {required final int characterId,
      required final int damage}) = _$_DamageEvent;
  const _DamageEvent._() : super._();

  factory _DamageEvent.fromJson(Map<String, dynamic> json) =
      _$_DamageEvent.fromJson;

  @override
  int get characterId;
  @override
  int get damage;
  @override
  @JsonKey(ignore: true)
  _$$_DamageEventCopyWith<_$_DamageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
