// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_data_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SyncDataEvent _$SyncDataEventFromJson(Map<String, dynamic> json) {
  return _SyncDataEvent.fromJson(json);
}

/// @nodoc
mixin _$SyncDataEvent {
  SyncData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SyncDataEventCopyWith<SyncDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncDataEventCopyWith<$Res> {
  factory $SyncDataEventCopyWith(
          SyncDataEvent value, $Res Function(SyncDataEvent) then) =
      _$SyncDataEventCopyWithImpl<$Res, SyncDataEvent>;
  @useResult
  $Res call({SyncData data});

  $SyncDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SyncDataEventCopyWithImpl<$Res, $Val extends SyncDataEvent>
    implements $SyncDataEventCopyWith<$Res> {
  _$SyncDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SyncData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SyncDataCopyWith<$Res> get data {
    return $SyncDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SyncDataEventCopyWith<$Res>
    implements $SyncDataEventCopyWith<$Res> {
  factory _$$_SyncDataEventCopyWith(
          _$_SyncDataEvent value, $Res Function(_$_SyncDataEvent) then) =
      __$$_SyncDataEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SyncData data});

  @override
  $SyncDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SyncDataEventCopyWithImpl<$Res>
    extends _$SyncDataEventCopyWithImpl<$Res, _$_SyncDataEvent>
    implements _$$_SyncDataEventCopyWith<$Res> {
  __$$_SyncDataEventCopyWithImpl(
      _$_SyncDataEvent _value, $Res Function(_$_SyncDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SyncDataEvent(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SyncData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SyncDataEvent extends _SyncDataEvent {
  _$_SyncDataEvent({required this.data}) : super._();

  factory _$_SyncDataEvent.fromJson(Map<String, dynamic> json) =>
      _$$_SyncDataEventFromJson(json);

  @override
  final SyncData data;

  @override
  String toString() {
    return 'SyncDataEvent(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SyncDataEvent &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SyncDataEventCopyWith<_$_SyncDataEvent> get copyWith =>
      __$$_SyncDataEventCopyWithImpl<_$_SyncDataEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SyncDataEventToJson(
      this,
    );
  }
}

abstract class _SyncDataEvent extends SyncDataEvent {
  factory _SyncDataEvent({required final SyncData data}) = _$_SyncDataEvent;
  _SyncDataEvent._() : super._();

  factory _SyncDataEvent.fromJson(Map<String, dynamic> json) =
      _$_SyncDataEvent.fromJson;

  @override
  SyncData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SyncDataEventCopyWith<_$_SyncDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
