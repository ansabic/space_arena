// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int goldMineCoolDown) setGoldMineCoolDown,
    required TResult Function(int crystalMineCoolDown) setCrystalMineCoolDown,
    required TResult Function(int plasmaMineCoolDown) setPlasmaMineCoolDown,
    required TResult Function() setMyIpAddress,
    required TResult Function(int gameDurationSeconds) setGameDuration,
    required TResult Function(String address) setOtherAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult? Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult? Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult? Function()? setMyIpAddress,
    TResult? Function(int gameDurationSeconds)? setGameDuration,
    TResult? Function(String address)? setOtherAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult Function()? setMyIpAddress,
    TResult Function(int gameDurationSeconds)? setGameDuration,
    TResult Function(String address)? setOtherAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGoldMineCD value) setGoldMineCoolDown,
    required TResult Function(_SetCrystalMineCD value) setCrystalMineCoolDown,
    required TResult Function(_SetPlasmaMineCD value) setPlasmaMineCoolDown,
    required TResult Function(_SetMyIpAddress value) setMyIpAddress,
    required TResult Function(_SetGameDurationSeconds value) setGameDuration,
    required TResult Function(_SetOtherIpAddress value) setOtherAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult? Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult? Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult? Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult? Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult? Function(_SetOtherIpAddress value)? setOtherAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult Function(_SetOtherIpAddress value)? setOtherAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetGoldMineCDCopyWith<$Res> {
  factory _$$_SetGoldMineCDCopyWith(
          _$_SetGoldMineCD value, $Res Function(_$_SetGoldMineCD) then) =
      __$$_SetGoldMineCDCopyWithImpl<$Res>;
  @useResult
  $Res call({int goldMineCoolDown});
}

/// @nodoc
class __$$_SetGoldMineCDCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_SetGoldMineCD>
    implements _$$_SetGoldMineCDCopyWith<$Res> {
  __$$_SetGoldMineCDCopyWithImpl(
      _$_SetGoldMineCD _value, $Res Function(_$_SetGoldMineCD) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goldMineCoolDown = null,
  }) {
    return _then(_$_SetGoldMineCD(
      goldMineCoolDown: null == goldMineCoolDown
          ? _value.goldMineCoolDown
          : goldMineCoolDown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetGoldMineCD implements _SetGoldMineCD {
  const _$_SetGoldMineCD({required this.goldMineCoolDown});

  @override
  final int goldMineCoolDown;

  @override
  String toString() {
    return 'SettingsEvent.setGoldMineCoolDown(goldMineCoolDown: $goldMineCoolDown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetGoldMineCD &&
            (identical(other.goldMineCoolDown, goldMineCoolDown) ||
                other.goldMineCoolDown == goldMineCoolDown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, goldMineCoolDown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetGoldMineCDCopyWith<_$_SetGoldMineCD> get copyWith =>
      __$$_SetGoldMineCDCopyWithImpl<_$_SetGoldMineCD>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int goldMineCoolDown) setGoldMineCoolDown,
    required TResult Function(int crystalMineCoolDown) setCrystalMineCoolDown,
    required TResult Function(int plasmaMineCoolDown) setPlasmaMineCoolDown,
    required TResult Function() setMyIpAddress,
    required TResult Function(int gameDurationSeconds) setGameDuration,
    required TResult Function(String address) setOtherAddress,
  }) {
    return setGoldMineCoolDown(goldMineCoolDown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult? Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult? Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult? Function()? setMyIpAddress,
    TResult? Function(int gameDurationSeconds)? setGameDuration,
    TResult? Function(String address)? setOtherAddress,
  }) {
    return setGoldMineCoolDown?.call(goldMineCoolDown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult Function()? setMyIpAddress,
    TResult Function(int gameDurationSeconds)? setGameDuration,
    TResult Function(String address)? setOtherAddress,
    required TResult orElse(),
  }) {
    if (setGoldMineCoolDown != null) {
      return setGoldMineCoolDown(goldMineCoolDown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGoldMineCD value) setGoldMineCoolDown,
    required TResult Function(_SetCrystalMineCD value) setCrystalMineCoolDown,
    required TResult Function(_SetPlasmaMineCD value) setPlasmaMineCoolDown,
    required TResult Function(_SetMyIpAddress value) setMyIpAddress,
    required TResult Function(_SetGameDurationSeconds value) setGameDuration,
    required TResult Function(_SetOtherIpAddress value) setOtherAddress,
  }) {
    return setGoldMineCoolDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult? Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult? Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult? Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult? Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult? Function(_SetOtherIpAddress value)? setOtherAddress,
  }) {
    return setGoldMineCoolDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult Function(_SetOtherIpAddress value)? setOtherAddress,
    required TResult orElse(),
  }) {
    if (setGoldMineCoolDown != null) {
      return setGoldMineCoolDown(this);
    }
    return orElse();
  }
}

abstract class _SetGoldMineCD implements SettingsEvent {
  const factory _SetGoldMineCD({required final int goldMineCoolDown}) =
      _$_SetGoldMineCD;

  int get goldMineCoolDown;
  @JsonKey(ignore: true)
  _$$_SetGoldMineCDCopyWith<_$_SetGoldMineCD> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetCrystalMineCDCopyWith<$Res> {
  factory _$$_SetCrystalMineCDCopyWith(
          _$_SetCrystalMineCD value, $Res Function(_$_SetCrystalMineCD) then) =
      __$$_SetCrystalMineCDCopyWithImpl<$Res>;
  @useResult
  $Res call({int crystalMineCoolDown});
}

/// @nodoc
class __$$_SetCrystalMineCDCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_SetCrystalMineCD>
    implements _$$_SetCrystalMineCDCopyWith<$Res> {
  __$$_SetCrystalMineCDCopyWithImpl(
      _$_SetCrystalMineCD _value, $Res Function(_$_SetCrystalMineCD) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crystalMineCoolDown = null,
  }) {
    return _then(_$_SetCrystalMineCD(
      crystalMineCoolDown: null == crystalMineCoolDown
          ? _value.crystalMineCoolDown
          : crystalMineCoolDown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetCrystalMineCD implements _SetCrystalMineCD {
  const _$_SetCrystalMineCD({required this.crystalMineCoolDown});

  @override
  final int crystalMineCoolDown;

  @override
  String toString() {
    return 'SettingsEvent.setCrystalMineCoolDown(crystalMineCoolDown: $crystalMineCoolDown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetCrystalMineCD &&
            (identical(other.crystalMineCoolDown, crystalMineCoolDown) ||
                other.crystalMineCoolDown == crystalMineCoolDown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, crystalMineCoolDown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetCrystalMineCDCopyWith<_$_SetCrystalMineCD> get copyWith =>
      __$$_SetCrystalMineCDCopyWithImpl<_$_SetCrystalMineCD>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int goldMineCoolDown) setGoldMineCoolDown,
    required TResult Function(int crystalMineCoolDown) setCrystalMineCoolDown,
    required TResult Function(int plasmaMineCoolDown) setPlasmaMineCoolDown,
    required TResult Function() setMyIpAddress,
    required TResult Function(int gameDurationSeconds) setGameDuration,
    required TResult Function(String address) setOtherAddress,
  }) {
    return setCrystalMineCoolDown(crystalMineCoolDown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult? Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult? Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult? Function()? setMyIpAddress,
    TResult? Function(int gameDurationSeconds)? setGameDuration,
    TResult? Function(String address)? setOtherAddress,
  }) {
    return setCrystalMineCoolDown?.call(crystalMineCoolDown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult Function()? setMyIpAddress,
    TResult Function(int gameDurationSeconds)? setGameDuration,
    TResult Function(String address)? setOtherAddress,
    required TResult orElse(),
  }) {
    if (setCrystalMineCoolDown != null) {
      return setCrystalMineCoolDown(crystalMineCoolDown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGoldMineCD value) setGoldMineCoolDown,
    required TResult Function(_SetCrystalMineCD value) setCrystalMineCoolDown,
    required TResult Function(_SetPlasmaMineCD value) setPlasmaMineCoolDown,
    required TResult Function(_SetMyIpAddress value) setMyIpAddress,
    required TResult Function(_SetGameDurationSeconds value) setGameDuration,
    required TResult Function(_SetOtherIpAddress value) setOtherAddress,
  }) {
    return setCrystalMineCoolDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult? Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult? Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult? Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult? Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult? Function(_SetOtherIpAddress value)? setOtherAddress,
  }) {
    return setCrystalMineCoolDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult Function(_SetOtherIpAddress value)? setOtherAddress,
    required TResult orElse(),
  }) {
    if (setCrystalMineCoolDown != null) {
      return setCrystalMineCoolDown(this);
    }
    return orElse();
  }
}

abstract class _SetCrystalMineCD implements SettingsEvent {
  const factory _SetCrystalMineCD({required final int crystalMineCoolDown}) =
      _$_SetCrystalMineCD;

  int get crystalMineCoolDown;
  @JsonKey(ignore: true)
  _$$_SetCrystalMineCDCopyWith<_$_SetCrystalMineCD> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetPlasmaMineCDCopyWith<$Res> {
  factory _$$_SetPlasmaMineCDCopyWith(
          _$_SetPlasmaMineCD value, $Res Function(_$_SetPlasmaMineCD) then) =
      __$$_SetPlasmaMineCDCopyWithImpl<$Res>;
  @useResult
  $Res call({int plasmaMineCoolDown});
}

/// @nodoc
class __$$_SetPlasmaMineCDCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_SetPlasmaMineCD>
    implements _$$_SetPlasmaMineCDCopyWith<$Res> {
  __$$_SetPlasmaMineCDCopyWithImpl(
      _$_SetPlasmaMineCD _value, $Res Function(_$_SetPlasmaMineCD) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plasmaMineCoolDown = null,
  }) {
    return _then(_$_SetPlasmaMineCD(
      plasmaMineCoolDown: null == plasmaMineCoolDown
          ? _value.plasmaMineCoolDown
          : plasmaMineCoolDown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetPlasmaMineCD implements _SetPlasmaMineCD {
  const _$_SetPlasmaMineCD({required this.plasmaMineCoolDown});

  @override
  final int plasmaMineCoolDown;

  @override
  String toString() {
    return 'SettingsEvent.setPlasmaMineCoolDown(plasmaMineCoolDown: $plasmaMineCoolDown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetPlasmaMineCD &&
            (identical(other.plasmaMineCoolDown, plasmaMineCoolDown) ||
                other.plasmaMineCoolDown == plasmaMineCoolDown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plasmaMineCoolDown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetPlasmaMineCDCopyWith<_$_SetPlasmaMineCD> get copyWith =>
      __$$_SetPlasmaMineCDCopyWithImpl<_$_SetPlasmaMineCD>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int goldMineCoolDown) setGoldMineCoolDown,
    required TResult Function(int crystalMineCoolDown) setCrystalMineCoolDown,
    required TResult Function(int plasmaMineCoolDown) setPlasmaMineCoolDown,
    required TResult Function() setMyIpAddress,
    required TResult Function(int gameDurationSeconds) setGameDuration,
    required TResult Function(String address) setOtherAddress,
  }) {
    return setPlasmaMineCoolDown(plasmaMineCoolDown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult? Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult? Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult? Function()? setMyIpAddress,
    TResult? Function(int gameDurationSeconds)? setGameDuration,
    TResult? Function(String address)? setOtherAddress,
  }) {
    return setPlasmaMineCoolDown?.call(plasmaMineCoolDown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult Function()? setMyIpAddress,
    TResult Function(int gameDurationSeconds)? setGameDuration,
    TResult Function(String address)? setOtherAddress,
    required TResult orElse(),
  }) {
    if (setPlasmaMineCoolDown != null) {
      return setPlasmaMineCoolDown(plasmaMineCoolDown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGoldMineCD value) setGoldMineCoolDown,
    required TResult Function(_SetCrystalMineCD value) setCrystalMineCoolDown,
    required TResult Function(_SetPlasmaMineCD value) setPlasmaMineCoolDown,
    required TResult Function(_SetMyIpAddress value) setMyIpAddress,
    required TResult Function(_SetGameDurationSeconds value) setGameDuration,
    required TResult Function(_SetOtherIpAddress value) setOtherAddress,
  }) {
    return setPlasmaMineCoolDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult? Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult? Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult? Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult? Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult? Function(_SetOtherIpAddress value)? setOtherAddress,
  }) {
    return setPlasmaMineCoolDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult Function(_SetOtherIpAddress value)? setOtherAddress,
    required TResult orElse(),
  }) {
    if (setPlasmaMineCoolDown != null) {
      return setPlasmaMineCoolDown(this);
    }
    return orElse();
  }
}

abstract class _SetPlasmaMineCD implements SettingsEvent {
  const factory _SetPlasmaMineCD({required final int plasmaMineCoolDown}) =
      _$_SetPlasmaMineCD;

  int get plasmaMineCoolDown;
  @JsonKey(ignore: true)
  _$$_SetPlasmaMineCDCopyWith<_$_SetPlasmaMineCD> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetMyIpAddressCopyWith<$Res> {
  factory _$$_SetMyIpAddressCopyWith(
          _$_SetMyIpAddress value, $Res Function(_$_SetMyIpAddress) then) =
      __$$_SetMyIpAddressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetMyIpAddressCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_SetMyIpAddress>
    implements _$$_SetMyIpAddressCopyWith<$Res> {
  __$$_SetMyIpAddressCopyWithImpl(
      _$_SetMyIpAddress _value, $Res Function(_$_SetMyIpAddress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetMyIpAddress implements _SetMyIpAddress {
  const _$_SetMyIpAddress();

  @override
  String toString() {
    return 'SettingsEvent.setMyIpAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetMyIpAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int goldMineCoolDown) setGoldMineCoolDown,
    required TResult Function(int crystalMineCoolDown) setCrystalMineCoolDown,
    required TResult Function(int plasmaMineCoolDown) setPlasmaMineCoolDown,
    required TResult Function() setMyIpAddress,
    required TResult Function(int gameDurationSeconds) setGameDuration,
    required TResult Function(String address) setOtherAddress,
  }) {
    return setMyIpAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult? Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult? Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult? Function()? setMyIpAddress,
    TResult? Function(int gameDurationSeconds)? setGameDuration,
    TResult? Function(String address)? setOtherAddress,
  }) {
    return setMyIpAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult Function()? setMyIpAddress,
    TResult Function(int gameDurationSeconds)? setGameDuration,
    TResult Function(String address)? setOtherAddress,
    required TResult orElse(),
  }) {
    if (setMyIpAddress != null) {
      return setMyIpAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGoldMineCD value) setGoldMineCoolDown,
    required TResult Function(_SetCrystalMineCD value) setCrystalMineCoolDown,
    required TResult Function(_SetPlasmaMineCD value) setPlasmaMineCoolDown,
    required TResult Function(_SetMyIpAddress value) setMyIpAddress,
    required TResult Function(_SetGameDurationSeconds value) setGameDuration,
    required TResult Function(_SetOtherIpAddress value) setOtherAddress,
  }) {
    return setMyIpAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult? Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult? Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult? Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult? Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult? Function(_SetOtherIpAddress value)? setOtherAddress,
  }) {
    return setMyIpAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult Function(_SetOtherIpAddress value)? setOtherAddress,
    required TResult orElse(),
  }) {
    if (setMyIpAddress != null) {
      return setMyIpAddress(this);
    }
    return orElse();
  }
}

abstract class _SetMyIpAddress implements SettingsEvent {
  const factory _SetMyIpAddress() = _$_SetMyIpAddress;
}

/// @nodoc
abstract class _$$_SetGameDurationSecondsCopyWith<$Res> {
  factory _$$_SetGameDurationSecondsCopyWith(_$_SetGameDurationSeconds value,
          $Res Function(_$_SetGameDurationSeconds) then) =
      __$$_SetGameDurationSecondsCopyWithImpl<$Res>;
  @useResult
  $Res call({int gameDurationSeconds});
}

/// @nodoc
class __$$_SetGameDurationSecondsCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_SetGameDurationSeconds>
    implements _$$_SetGameDurationSecondsCopyWith<$Res> {
  __$$_SetGameDurationSecondsCopyWithImpl(_$_SetGameDurationSeconds _value,
      $Res Function(_$_SetGameDurationSeconds) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameDurationSeconds = null,
  }) {
    return _then(_$_SetGameDurationSeconds(
      gameDurationSeconds: null == gameDurationSeconds
          ? _value.gameDurationSeconds
          : gameDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetGameDurationSeconds implements _SetGameDurationSeconds {
  const _$_SetGameDurationSeconds({required this.gameDurationSeconds});

  @override
  final int gameDurationSeconds;

  @override
  String toString() {
    return 'SettingsEvent.setGameDuration(gameDurationSeconds: $gameDurationSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetGameDurationSeconds &&
            (identical(other.gameDurationSeconds, gameDurationSeconds) ||
                other.gameDurationSeconds == gameDurationSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameDurationSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetGameDurationSecondsCopyWith<_$_SetGameDurationSeconds> get copyWith =>
      __$$_SetGameDurationSecondsCopyWithImpl<_$_SetGameDurationSeconds>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int goldMineCoolDown) setGoldMineCoolDown,
    required TResult Function(int crystalMineCoolDown) setCrystalMineCoolDown,
    required TResult Function(int plasmaMineCoolDown) setPlasmaMineCoolDown,
    required TResult Function() setMyIpAddress,
    required TResult Function(int gameDurationSeconds) setGameDuration,
    required TResult Function(String address) setOtherAddress,
  }) {
    return setGameDuration(gameDurationSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult? Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult? Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult? Function()? setMyIpAddress,
    TResult? Function(int gameDurationSeconds)? setGameDuration,
    TResult? Function(String address)? setOtherAddress,
  }) {
    return setGameDuration?.call(gameDurationSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult Function()? setMyIpAddress,
    TResult Function(int gameDurationSeconds)? setGameDuration,
    TResult Function(String address)? setOtherAddress,
    required TResult orElse(),
  }) {
    if (setGameDuration != null) {
      return setGameDuration(gameDurationSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGoldMineCD value) setGoldMineCoolDown,
    required TResult Function(_SetCrystalMineCD value) setCrystalMineCoolDown,
    required TResult Function(_SetPlasmaMineCD value) setPlasmaMineCoolDown,
    required TResult Function(_SetMyIpAddress value) setMyIpAddress,
    required TResult Function(_SetGameDurationSeconds value) setGameDuration,
    required TResult Function(_SetOtherIpAddress value) setOtherAddress,
  }) {
    return setGameDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult? Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult? Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult? Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult? Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult? Function(_SetOtherIpAddress value)? setOtherAddress,
  }) {
    return setGameDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult Function(_SetOtherIpAddress value)? setOtherAddress,
    required TResult orElse(),
  }) {
    if (setGameDuration != null) {
      return setGameDuration(this);
    }
    return orElse();
  }
}

abstract class _SetGameDurationSeconds implements SettingsEvent {
  const factory _SetGameDurationSeconds(
      {required final int gameDurationSeconds}) = _$_SetGameDurationSeconds;

  int get gameDurationSeconds;
  @JsonKey(ignore: true)
  _$$_SetGameDurationSecondsCopyWith<_$_SetGameDurationSeconds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetOtherIpAddressCopyWith<$Res> {
  factory _$$_SetOtherIpAddressCopyWith(_$_SetOtherIpAddress value,
          $Res Function(_$_SetOtherIpAddress) then) =
      __$$_SetOtherIpAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$_SetOtherIpAddressCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_SetOtherIpAddress>
    implements _$$_SetOtherIpAddressCopyWith<$Res> {
  __$$_SetOtherIpAddressCopyWithImpl(
      _$_SetOtherIpAddress _value, $Res Function(_$_SetOtherIpAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$_SetOtherIpAddress(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetOtherIpAddress implements _SetOtherIpAddress {
  const _$_SetOtherIpAddress({required this.address});

  @override
  final String address;

  @override
  String toString() {
    return 'SettingsEvent.setOtherAddress(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetOtherIpAddress &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetOtherIpAddressCopyWith<_$_SetOtherIpAddress> get copyWith =>
      __$$_SetOtherIpAddressCopyWithImpl<_$_SetOtherIpAddress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int goldMineCoolDown) setGoldMineCoolDown,
    required TResult Function(int crystalMineCoolDown) setCrystalMineCoolDown,
    required TResult Function(int plasmaMineCoolDown) setPlasmaMineCoolDown,
    required TResult Function() setMyIpAddress,
    required TResult Function(int gameDurationSeconds) setGameDuration,
    required TResult Function(String address) setOtherAddress,
  }) {
    return setOtherAddress(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult? Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult? Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult? Function()? setMyIpAddress,
    TResult? Function(int gameDurationSeconds)? setGameDuration,
    TResult? Function(String address)? setOtherAddress,
  }) {
    return setOtherAddress?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int goldMineCoolDown)? setGoldMineCoolDown,
    TResult Function(int crystalMineCoolDown)? setCrystalMineCoolDown,
    TResult Function(int plasmaMineCoolDown)? setPlasmaMineCoolDown,
    TResult Function()? setMyIpAddress,
    TResult Function(int gameDurationSeconds)? setGameDuration,
    TResult Function(String address)? setOtherAddress,
    required TResult orElse(),
  }) {
    if (setOtherAddress != null) {
      return setOtherAddress(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetGoldMineCD value) setGoldMineCoolDown,
    required TResult Function(_SetCrystalMineCD value) setCrystalMineCoolDown,
    required TResult Function(_SetPlasmaMineCD value) setPlasmaMineCoolDown,
    required TResult Function(_SetMyIpAddress value) setMyIpAddress,
    required TResult Function(_SetGameDurationSeconds value) setGameDuration,
    required TResult Function(_SetOtherIpAddress value) setOtherAddress,
  }) {
    return setOtherAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult? Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult? Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult? Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult? Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult? Function(_SetOtherIpAddress value)? setOtherAddress,
  }) {
    return setOtherAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetGoldMineCD value)? setGoldMineCoolDown,
    TResult Function(_SetCrystalMineCD value)? setCrystalMineCoolDown,
    TResult Function(_SetPlasmaMineCD value)? setPlasmaMineCoolDown,
    TResult Function(_SetMyIpAddress value)? setMyIpAddress,
    TResult Function(_SetGameDurationSeconds value)? setGameDuration,
    TResult Function(_SetOtherIpAddress value)? setOtherAddress,
    required TResult orElse(),
  }) {
    if (setOtherAddress != null) {
      return setOtherAddress(this);
    }
    return orElse();
  }
}

abstract class _SetOtherIpAddress implements SettingsEvent {
  const factory _SetOtherIpAddress({required final String address}) =
      _$_SetOtherIpAddress;

  String get address;
  @JsonKey(ignore: true)
  _$$_SetOtherIpAddressCopyWith<_$_SetOtherIpAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  int get goldMineCoolDown => throw _privateConstructorUsedError;
  int get crystalMineCoolDown => throw _privateConstructorUsedError;
  int get plasmaMineCoolDown => throw _privateConstructorUsedError;
  int get gameDurationSeconds => throw _privateConstructorUsedError;
  String get serverIpAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {int goldMineCoolDown,
      int crystalMineCoolDown,
      int plasmaMineCoolDown,
      int gameDurationSeconds,
      String serverIpAddress});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goldMineCoolDown = null,
    Object? crystalMineCoolDown = null,
    Object? plasmaMineCoolDown = null,
    Object? gameDurationSeconds = null,
    Object? serverIpAddress = null,
  }) {
    return _then(_value.copyWith(
      goldMineCoolDown: null == goldMineCoolDown
          ? _value.goldMineCoolDown
          : goldMineCoolDown // ignore: cast_nullable_to_non_nullable
              as int,
      crystalMineCoolDown: null == crystalMineCoolDown
          ? _value.crystalMineCoolDown
          : crystalMineCoolDown // ignore: cast_nullable_to_non_nullable
              as int,
      plasmaMineCoolDown: null == plasmaMineCoolDown
          ? _value.plasmaMineCoolDown
          : plasmaMineCoolDown // ignore: cast_nullable_to_non_nullable
              as int,
      gameDurationSeconds: null == gameDurationSeconds
          ? _value.gameDurationSeconds
          : gameDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      serverIpAddress: null == serverIpAddress
          ? _value.serverIpAddress
          : serverIpAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int goldMineCoolDown,
      int crystalMineCoolDown,
      int plasmaMineCoolDown,
      int gameDurationSeconds,
      String serverIpAddress});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goldMineCoolDown = null,
    Object? crystalMineCoolDown = null,
    Object? plasmaMineCoolDown = null,
    Object? gameDurationSeconds = null,
    Object? serverIpAddress = null,
  }) {
    return _then(_$_Initial(
      goldMineCoolDown: null == goldMineCoolDown
          ? _value.goldMineCoolDown
          : goldMineCoolDown // ignore: cast_nullable_to_non_nullable
              as int,
      crystalMineCoolDown: null == crystalMineCoolDown
          ? _value.crystalMineCoolDown
          : crystalMineCoolDown // ignore: cast_nullable_to_non_nullable
              as int,
      plasmaMineCoolDown: null == plasmaMineCoolDown
          ? _value.plasmaMineCoolDown
          : plasmaMineCoolDown // ignore: cast_nullable_to_non_nullable
              as int,
      gameDurationSeconds: null == gameDurationSeconds
          ? _value.gameDurationSeconds
          : gameDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      serverIpAddress: null == serverIpAddress
          ? _value.serverIpAddress
          : serverIpAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.goldMineCoolDown,
      required this.crystalMineCoolDown,
      required this.plasmaMineCoolDown,
      required this.gameDurationSeconds,
      required this.serverIpAddress});

  @override
  final int goldMineCoolDown;
  @override
  final int crystalMineCoolDown;
  @override
  final int plasmaMineCoolDown;
  @override
  final int gameDurationSeconds;
  @override
  final String serverIpAddress;

  @override
  String toString() {
    return 'SettingsState(goldMineCoolDown: $goldMineCoolDown, crystalMineCoolDown: $crystalMineCoolDown, plasmaMineCoolDown: $plasmaMineCoolDown, gameDurationSeconds: $gameDurationSeconds, serverIpAddress: $serverIpAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.goldMineCoolDown, goldMineCoolDown) ||
                other.goldMineCoolDown == goldMineCoolDown) &&
            (identical(other.crystalMineCoolDown, crystalMineCoolDown) ||
                other.crystalMineCoolDown == crystalMineCoolDown) &&
            (identical(other.plasmaMineCoolDown, plasmaMineCoolDown) ||
                other.plasmaMineCoolDown == plasmaMineCoolDown) &&
            (identical(other.gameDurationSeconds, gameDurationSeconds) ||
                other.gameDurationSeconds == gameDurationSeconds) &&
            (identical(other.serverIpAddress, serverIpAddress) ||
                other.serverIpAddress == serverIpAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      goldMineCoolDown,
      crystalMineCoolDown,
      plasmaMineCoolDown,
      gameDurationSeconds,
      serverIpAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements SettingsState {
  const factory _Initial(
      {required final int goldMineCoolDown,
      required final int crystalMineCoolDown,
      required final int plasmaMineCoolDown,
      required final int gameDurationSeconds,
      required final String serverIpAddress}) = _$_Initial;

  @override
  int get goldMineCoolDown;
  @override
  int get crystalMineCoolDown;
  @override
  int get plasmaMineCoolDown;
  @override
  int get gameDurationSeconds;
  @override
  String get serverIpAddress;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
