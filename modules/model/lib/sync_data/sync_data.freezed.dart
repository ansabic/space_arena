// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SyncData _$SyncDataFromJson(Map<String, dynamic> json) {
  return _SyncData.fromJson(json);
}

/// @nodoc
mixin _$SyncData {
  FighterSync? get fighter1 => throw _privateConstructorUsedError;
  MotherShipSync get mothership1 => throw _privateConstructorUsedError;
  FighterSync? get fighter2 => throw _privateConstructorUsedError;
  MotherShipSync get mothership2 => throw _privateConstructorUsedError;
  List<MineSync> get mines => throw _privateConstructorUsedError;
  List<BulletSync> get bullets => throw _privateConstructorUsedError;
  Price get resources1 => throw _privateConstructorUsedError;
  Price get resources2 => throw _privateConstructorUsedError;
  int get timerSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SyncDataCopyWith<SyncData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncDataCopyWith<$Res> {
  factory $SyncDataCopyWith(SyncData value, $Res Function(SyncData) then) =
      _$SyncDataCopyWithImpl<$Res, SyncData>;
  @useResult
  $Res call(
      {FighterSync? fighter1,
      MotherShipSync mothership1,
      FighterSync? fighter2,
      MotherShipSync mothership2,
      List<MineSync> mines,
      List<BulletSync> bullets,
      Price resources1,
      Price resources2,
      int timerSeconds});

  $FighterSyncCopyWith<$Res>? get fighter1;
  $MotherShipSyncCopyWith<$Res> get mothership1;
  $FighterSyncCopyWith<$Res>? get fighter2;
  $MotherShipSyncCopyWith<$Res> get mothership2;
}

/// @nodoc
class _$SyncDataCopyWithImpl<$Res, $Val extends SyncData>
    implements $SyncDataCopyWith<$Res> {
  _$SyncDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fighter1 = freezed,
    Object? mothership1 = null,
    Object? fighter2 = freezed,
    Object? mothership2 = null,
    Object? mines = null,
    Object? bullets = null,
    Object? resources1 = null,
    Object? resources2 = null,
    Object? timerSeconds = null,
  }) {
    return _then(_value.copyWith(
      fighter1: freezed == fighter1
          ? _value.fighter1
          : fighter1 // ignore: cast_nullable_to_non_nullable
              as FighterSync?,
      mothership1: null == mothership1
          ? _value.mothership1
          : mothership1 // ignore: cast_nullable_to_non_nullable
              as MotherShipSync,
      fighter2: freezed == fighter2
          ? _value.fighter2
          : fighter2 // ignore: cast_nullable_to_non_nullable
              as FighterSync?,
      mothership2: null == mothership2
          ? _value.mothership2
          : mothership2 // ignore: cast_nullable_to_non_nullable
              as MotherShipSync,
      mines: null == mines
          ? _value.mines
          : mines // ignore: cast_nullable_to_non_nullable
              as List<MineSync>,
      bullets: null == bullets
          ? _value.bullets
          : bullets // ignore: cast_nullable_to_non_nullable
              as List<BulletSync>,
      resources1: null == resources1
          ? _value.resources1
          : resources1 // ignore: cast_nullable_to_non_nullable
              as Price,
      resources2: null == resources2
          ? _value.resources2
          : resources2 // ignore: cast_nullable_to_non_nullable
              as Price,
      timerSeconds: null == timerSeconds
          ? _value.timerSeconds
          : timerSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FighterSyncCopyWith<$Res>? get fighter1 {
    if (_value.fighter1 == null) {
      return null;
    }

    return $FighterSyncCopyWith<$Res>(_value.fighter1!, (value) {
      return _then(_value.copyWith(fighter1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MotherShipSyncCopyWith<$Res> get mothership1 {
    return $MotherShipSyncCopyWith<$Res>(_value.mothership1, (value) {
      return _then(_value.copyWith(mothership1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FighterSyncCopyWith<$Res>? get fighter2 {
    if (_value.fighter2 == null) {
      return null;
    }

    return $FighterSyncCopyWith<$Res>(_value.fighter2!, (value) {
      return _then(_value.copyWith(fighter2: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MotherShipSyncCopyWith<$Res> get mothership2 {
    return $MotherShipSyncCopyWith<$Res>(_value.mothership2, (value) {
      return _then(_value.copyWith(mothership2: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SyncDataCopyWith<$Res> implements $SyncDataCopyWith<$Res> {
  factory _$$_SyncDataCopyWith(
          _$_SyncData value, $Res Function(_$_SyncData) then) =
      __$$_SyncDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FighterSync? fighter1,
      MotherShipSync mothership1,
      FighterSync? fighter2,
      MotherShipSync mothership2,
      List<MineSync> mines,
      List<BulletSync> bullets,
      Price resources1,
      Price resources2,
      int timerSeconds});

  @override
  $FighterSyncCopyWith<$Res>? get fighter1;
  @override
  $MotherShipSyncCopyWith<$Res> get mothership1;
  @override
  $FighterSyncCopyWith<$Res>? get fighter2;
  @override
  $MotherShipSyncCopyWith<$Res> get mothership2;
}

/// @nodoc
class __$$_SyncDataCopyWithImpl<$Res>
    extends _$SyncDataCopyWithImpl<$Res, _$_SyncData>
    implements _$$_SyncDataCopyWith<$Res> {
  __$$_SyncDataCopyWithImpl(
      _$_SyncData _value, $Res Function(_$_SyncData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fighter1 = freezed,
    Object? mothership1 = null,
    Object? fighter2 = freezed,
    Object? mothership2 = null,
    Object? mines = null,
    Object? bullets = null,
    Object? resources1 = null,
    Object? resources2 = null,
    Object? timerSeconds = null,
  }) {
    return _then(_$_SyncData(
      fighter1: freezed == fighter1
          ? _value.fighter1
          : fighter1 // ignore: cast_nullable_to_non_nullable
              as FighterSync?,
      mothership1: null == mothership1
          ? _value.mothership1
          : mothership1 // ignore: cast_nullable_to_non_nullable
              as MotherShipSync,
      fighter2: freezed == fighter2
          ? _value.fighter2
          : fighter2 // ignore: cast_nullable_to_non_nullable
              as FighterSync?,
      mothership2: null == mothership2
          ? _value.mothership2
          : mothership2 // ignore: cast_nullable_to_non_nullable
              as MotherShipSync,
      mines: null == mines
          ? _value._mines
          : mines // ignore: cast_nullable_to_non_nullable
              as List<MineSync>,
      bullets: null == bullets
          ? _value._bullets
          : bullets // ignore: cast_nullable_to_non_nullable
              as List<BulletSync>,
      resources1: null == resources1
          ? _value.resources1
          : resources1 // ignore: cast_nullable_to_non_nullable
              as Price,
      resources2: null == resources2
          ? _value.resources2
          : resources2 // ignore: cast_nullable_to_non_nullable
              as Price,
      timerSeconds: null == timerSeconds
          ? _value.timerSeconds
          : timerSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SyncData extends _SyncData {
  _$_SyncData(
      {required this.fighter1,
      required this.mothership1,
      required this.fighter2,
      required this.mothership2,
      required final List<MineSync> mines,
      required final List<BulletSync> bullets,
      required this.resources1,
      required this.resources2,
      required this.timerSeconds})
      : _mines = mines,
        _bullets = bullets,
        super._();

  factory _$_SyncData.fromJson(Map<String, dynamic> json) =>
      _$$_SyncDataFromJson(json);

  @override
  final FighterSync? fighter1;
  @override
  final MotherShipSync mothership1;
  @override
  final FighterSync? fighter2;
  @override
  final MotherShipSync mothership2;
  final List<MineSync> _mines;
  @override
  List<MineSync> get mines {
    if (_mines is EqualUnmodifiableListView) return _mines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mines);
  }

  final List<BulletSync> _bullets;
  @override
  List<BulletSync> get bullets {
    if (_bullets is EqualUnmodifiableListView) return _bullets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bullets);
  }

  @override
  final Price resources1;
  @override
  final Price resources2;
  @override
  final int timerSeconds;

  @override
  String toString() {
    return 'SyncData(fighter1: $fighter1, mothership1: $mothership1, fighter2: $fighter2, mothership2: $mothership2, mines: $mines, bullets: $bullets, resources1: $resources1, resources2: $resources2, timerSeconds: $timerSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SyncData &&
            (identical(other.fighter1, fighter1) ||
                other.fighter1 == fighter1) &&
            (identical(other.mothership1, mothership1) ||
                other.mothership1 == mothership1) &&
            (identical(other.fighter2, fighter2) ||
                other.fighter2 == fighter2) &&
            (identical(other.mothership2, mothership2) ||
                other.mothership2 == mothership2) &&
            const DeepCollectionEquality().equals(other._mines, _mines) &&
            const DeepCollectionEquality().equals(other._bullets, _bullets) &&
            (identical(other.resources1, resources1) ||
                other.resources1 == resources1) &&
            (identical(other.resources2, resources2) ||
                other.resources2 == resources2) &&
            (identical(other.timerSeconds, timerSeconds) ||
                other.timerSeconds == timerSeconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fighter1,
      mothership1,
      fighter2,
      mothership2,
      const DeepCollectionEquality().hash(_mines),
      const DeepCollectionEquality().hash(_bullets),
      resources1,
      resources2,
      timerSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SyncDataCopyWith<_$_SyncData> get copyWith =>
      __$$_SyncDataCopyWithImpl<_$_SyncData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SyncDataToJson(
      this,
    );
  }
}

abstract class _SyncData extends SyncData {
  factory _SyncData(
      {required final FighterSync? fighter1,
      required final MotherShipSync mothership1,
      required final FighterSync? fighter2,
      required final MotherShipSync mothership2,
      required final List<MineSync> mines,
      required final List<BulletSync> bullets,
      required final Price resources1,
      required final Price resources2,
      required final int timerSeconds}) = _$_SyncData;
  _SyncData._() : super._();

  factory _SyncData.fromJson(Map<String, dynamic> json) = _$_SyncData.fromJson;

  @override
  FighterSync? get fighter1;
  @override
  MotherShipSync get mothership1;
  @override
  FighterSync? get fighter2;
  @override
  MotherShipSync get mothership2;
  @override
  List<MineSync> get mines;
  @override
  List<BulletSync> get bullets;
  @override
  Price get resources1;
  @override
  Price get resources2;
  @override
  int get timerSeconds;
  @override
  @JsonKey(ignore: true)
  _$$_SyncDataCopyWith<_$_SyncData> get copyWith =>
      throw _privateConstructorUsedError;
}

FighterSync _$FighterSyncFromJson(Map<String, dynamic> json) {
  return _FighterSync.fromJson(json);
}

/// @nodoc
mixin _$FighterSync {
  Team get team => throw _privateConstructorUsedError;
  double get angle => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  int get characterId => throw _privateConstructorUsedError;
  double? get destinationX => throw _privateConstructorUsedError;
  double? get destinationY => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FighterSyncCopyWith<FighterSync> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FighterSyncCopyWith<$Res> {
  factory $FighterSyncCopyWith(
          FighterSync value, $Res Function(FighterSync) then) =
      _$FighterSyncCopyWithImpl<$Res, FighterSync>;
  @useResult
  $Res call(
      {Team team,
      double angle,
      double x,
      double y,
      int characterId,
      double? destinationX,
      double? destinationY});
}

/// @nodoc
class _$FighterSyncCopyWithImpl<$Res, $Val extends FighterSync>
    implements $FighterSyncCopyWith<$Res> {
  _$FighterSyncCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? angle = null,
    Object? x = null,
    Object? y = null,
    Object? characterId = null,
    Object? destinationX = freezed,
    Object? destinationY = freezed,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
      destinationX: freezed == destinationX
          ? _value.destinationX
          : destinationX // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationY: freezed == destinationY
          ? _value.destinationY
          : destinationY // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FighterSyncCopyWith<$Res>
    implements $FighterSyncCopyWith<$Res> {
  factory _$$_FighterSyncCopyWith(
          _$_FighterSync value, $Res Function(_$_FighterSync) then) =
      __$$_FighterSyncCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Team team,
      double angle,
      double x,
      double y,
      int characterId,
      double? destinationX,
      double? destinationY});
}

/// @nodoc
class __$$_FighterSyncCopyWithImpl<$Res>
    extends _$FighterSyncCopyWithImpl<$Res, _$_FighterSync>
    implements _$$_FighterSyncCopyWith<$Res> {
  __$$_FighterSyncCopyWithImpl(
      _$_FighterSync _value, $Res Function(_$_FighterSync) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? angle = null,
    Object? x = null,
    Object? y = null,
    Object? characterId = null,
    Object? destinationX = freezed,
    Object? destinationY = freezed,
  }) {
    return _then(_$_FighterSync(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
      destinationX: freezed == destinationX
          ? _value.destinationX
          : destinationX // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationY: freezed == destinationY
          ? _value.destinationY
          : destinationY // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FighterSync extends _FighterSync {
  _$_FighterSync(
      {required this.team,
      required this.angle,
      required this.x,
      required this.y,
      required this.characterId,
      this.destinationX,
      this.destinationY})
      : super._();

  factory _$_FighterSync.fromJson(Map<String, dynamic> json) =>
      _$$_FighterSyncFromJson(json);

  @override
  final Team team;
  @override
  final double angle;
  @override
  final double x;
  @override
  final double y;
  @override
  final int characterId;
  @override
  final double? destinationX;
  @override
  final double? destinationY;

  @override
  String toString() {
    return 'FighterSync(team: $team, angle: $angle, x: $x, y: $y, characterId: $characterId, destinationX: $destinationX, destinationY: $destinationY)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FighterSync &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.angle, angle) || other.angle == angle) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId) &&
            (identical(other.destinationX, destinationX) ||
                other.destinationX == destinationX) &&
            (identical(other.destinationY, destinationY) ||
                other.destinationY == destinationY));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, team, angle, x, y, characterId, destinationX, destinationY);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FighterSyncCopyWith<_$_FighterSync> get copyWith =>
      __$$_FighterSyncCopyWithImpl<_$_FighterSync>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FighterSyncToJson(
      this,
    );
  }
}

abstract class _FighterSync extends FighterSync {
  factory _FighterSync(
      {required final Team team,
      required final double angle,
      required final double x,
      required final double y,
      required final int characterId,
      final double? destinationX,
      final double? destinationY}) = _$_FighterSync;
  _FighterSync._() : super._();

  factory _FighterSync.fromJson(Map<String, dynamic> json) =
      _$_FighterSync.fromJson;

  @override
  Team get team;
  @override
  double get angle;
  @override
  double get x;
  @override
  double get y;
  @override
  int get characterId;
  @override
  double? get destinationX;
  @override
  double? get destinationY;
  @override
  @JsonKey(ignore: true)
  _$$_FighterSyncCopyWith<_$_FighterSync> get copyWith =>
      throw _privateConstructorUsedError;
}

PartSync _$PartSyncFromJson(Map<String, dynamic> json) {
  return _PartSync.fromJson(json);
}

/// @nodoc
mixin _$PartSync {
  Team get team => throw _privateConstructorUsedError;
  double get angle => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  int get characterId => throw _privateConstructorUsedError;
  int get abstractX => throw _privateConstructorUsedError;
  int get abstractY => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartSyncCopyWith<PartSync> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartSyncCopyWith<$Res> {
  factory $PartSyncCopyWith(PartSync value, $Res Function(PartSync) then) =
      _$PartSyncCopyWithImpl<$Res, PartSync>;
  @useResult
  $Res call(
      {Team team,
      double angle,
      double x,
      double y,
      int characterId,
      int abstractX,
      int abstractY});
}

/// @nodoc
class _$PartSyncCopyWithImpl<$Res, $Val extends PartSync>
    implements $PartSyncCopyWith<$Res> {
  _$PartSyncCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? angle = null,
    Object? x = null,
    Object? y = null,
    Object? characterId = null,
    Object? abstractX = null,
    Object? abstractY = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
      abstractX: null == abstractX
          ? _value.abstractX
          : abstractX // ignore: cast_nullable_to_non_nullable
              as int,
      abstractY: null == abstractY
          ? _value.abstractY
          : abstractY // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PartSyncCopyWith<$Res> implements $PartSyncCopyWith<$Res> {
  factory _$$_PartSyncCopyWith(
          _$_PartSync value, $Res Function(_$_PartSync) then) =
      __$$_PartSyncCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Team team,
      double angle,
      double x,
      double y,
      int characterId,
      int abstractX,
      int abstractY});
}

/// @nodoc
class __$$_PartSyncCopyWithImpl<$Res>
    extends _$PartSyncCopyWithImpl<$Res, _$_PartSync>
    implements _$$_PartSyncCopyWith<$Res> {
  __$$_PartSyncCopyWithImpl(
      _$_PartSync _value, $Res Function(_$_PartSync) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? angle = null,
    Object? x = null,
    Object? y = null,
    Object? characterId = null,
    Object? abstractX = null,
    Object? abstractY = null,
  }) {
    return _then(_$_PartSync(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
      abstractX: null == abstractX
          ? _value.abstractX
          : abstractX // ignore: cast_nullable_to_non_nullable
              as int,
      abstractY: null == abstractY
          ? _value.abstractY
          : abstractY // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PartSync extends _PartSync {
  _$_PartSync(
      {required this.team,
      required this.angle,
      required this.x,
      required this.y,
      required this.characterId,
      required this.abstractX,
      required this.abstractY})
      : super._();

  factory _$_PartSync.fromJson(Map<String, dynamic> json) =>
      _$$_PartSyncFromJson(json);

  @override
  final Team team;
  @override
  final double angle;
  @override
  final double x;
  @override
  final double y;
  @override
  final int characterId;
  @override
  final int abstractX;
  @override
  final int abstractY;

  @override
  String toString() {
    return 'PartSync(team: $team, angle: $angle, x: $x, y: $y, characterId: $characterId, abstractX: $abstractX, abstractY: $abstractY)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PartSync &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.angle, angle) || other.angle == angle) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId) &&
            (identical(other.abstractX, abstractX) ||
                other.abstractX == abstractX) &&
            (identical(other.abstractY, abstractY) ||
                other.abstractY == abstractY));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, team, angle, x, y, characterId, abstractX, abstractY);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PartSyncCopyWith<_$_PartSync> get copyWith =>
      __$$_PartSyncCopyWithImpl<_$_PartSync>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartSyncToJson(
      this,
    );
  }
}

abstract class _PartSync extends PartSync {
  factory _PartSync(
      {required final Team team,
      required final double angle,
      required final double x,
      required final double y,
      required final int characterId,
      required final int abstractX,
      required final int abstractY}) = _$_PartSync;
  _PartSync._() : super._();

  factory _PartSync.fromJson(Map<String, dynamic> json) = _$_PartSync.fromJson;

  @override
  Team get team;
  @override
  double get angle;
  @override
  double get x;
  @override
  double get y;
  @override
  int get characterId;
  @override
  int get abstractX;
  @override
  int get abstractY;
  @override
  @JsonKey(ignore: true)
  _$$_PartSyncCopyWith<_$_PartSync> get copyWith =>
      throw _privateConstructorUsedError;
}

MotherShipSync _$MotherShipSyncFromJson(Map<String, dynamic> json) {
  return _MotherShipSync.fromJson(json);
}

/// @nodoc
mixin _$MotherShipSync {
  Team get team => throw _privateConstructorUsedError;
  double get angle => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  int get characterId => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double? get destinationX => throw _privateConstructorUsedError;
  double? get destinationY => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotherShipSyncCopyWith<MotherShipSync> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotherShipSyncCopyWith<$Res> {
  factory $MotherShipSyncCopyWith(
          MotherShipSync value, $Res Function(MotherShipSync) then) =
      _$MotherShipSyncCopyWithImpl<$Res, MotherShipSync>;
  @useResult
  $Res call(
      {Team team,
      double angle,
      double x,
      int characterId,
      double y,
      double? destinationX,
      double? destinationY});
}

/// @nodoc
class _$MotherShipSyncCopyWithImpl<$Res, $Val extends MotherShipSync>
    implements $MotherShipSyncCopyWith<$Res> {
  _$MotherShipSyncCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? angle = null,
    Object? x = null,
    Object? characterId = null,
    Object? y = null,
    Object? destinationX = freezed,
    Object? destinationY = freezed,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      destinationX: freezed == destinationX
          ? _value.destinationX
          : destinationX // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationY: freezed == destinationY
          ? _value.destinationY
          : destinationY // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MotherShipSyncCopyWith<$Res>
    implements $MotherShipSyncCopyWith<$Res> {
  factory _$$_MotherShipSyncCopyWith(
          _$_MotherShipSync value, $Res Function(_$_MotherShipSync) then) =
      __$$_MotherShipSyncCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Team team,
      double angle,
      double x,
      int characterId,
      double y,
      double? destinationX,
      double? destinationY});
}

/// @nodoc
class __$$_MotherShipSyncCopyWithImpl<$Res>
    extends _$MotherShipSyncCopyWithImpl<$Res, _$_MotherShipSync>
    implements _$$_MotherShipSyncCopyWith<$Res> {
  __$$_MotherShipSyncCopyWithImpl(
      _$_MotherShipSync _value, $Res Function(_$_MotherShipSync) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? angle = null,
    Object? x = null,
    Object? characterId = null,
    Object? y = null,
    Object? destinationX = freezed,
    Object? destinationY = freezed,
  }) {
    return _then(_$_MotherShipSync(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      destinationX: freezed == destinationX
          ? _value.destinationX
          : destinationX // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationY: freezed == destinationY
          ? _value.destinationY
          : destinationY // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MotherShipSync extends _MotherShipSync {
  _$_MotherShipSync(
      {required this.team,
      required this.angle,
      required this.x,
      required this.characterId,
      required this.y,
      this.destinationX,
      this.destinationY})
      : super._();

  factory _$_MotherShipSync.fromJson(Map<String, dynamic> json) =>
      _$$_MotherShipSyncFromJson(json);

  @override
  final Team team;
  @override
  final double angle;
  @override
  final double x;
  @override
  final int characterId;
  @override
  final double y;
  @override
  final double? destinationX;
  @override
  final double? destinationY;

  @override
  String toString() {
    return 'MotherShipSync(team: $team, angle: $angle, x: $x, characterId: $characterId, y: $y, destinationX: $destinationX, destinationY: $destinationY)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MotherShipSync &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.angle, angle) || other.angle == angle) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.destinationX, destinationX) ||
                other.destinationX == destinationX) &&
            (identical(other.destinationY, destinationY) ||
                other.destinationY == destinationY));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, team, angle, x, characterId, y, destinationX, destinationY);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MotherShipSyncCopyWith<_$_MotherShipSync> get copyWith =>
      __$$_MotherShipSyncCopyWithImpl<_$_MotherShipSync>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MotherShipSyncToJson(
      this,
    );
  }
}

abstract class _MotherShipSync extends MotherShipSync {
  factory _MotherShipSync(
      {required final Team team,
      required final double angle,
      required final double x,
      required final int characterId,
      required final double y,
      final double? destinationX,
      final double? destinationY}) = _$_MotherShipSync;
  _MotherShipSync._() : super._();

  factory _MotherShipSync.fromJson(Map<String, dynamic> json) =
      _$_MotherShipSync.fromJson;

  @override
  Team get team;
  @override
  double get angle;
  @override
  double get x;
  @override
  int get characterId;
  @override
  double get y;
  @override
  double? get destinationX;
  @override
  double? get destinationY;
  @override
  @JsonKey(ignore: true)
  _$$_MotherShipSyncCopyWith<_$_MotherShipSync> get copyWith =>
      throw _privateConstructorUsedError;
}

MineSync _$MineSyncFromJson(Map<String, dynamic> json) {
  return _MineSync.fromJson(json);
}

/// @nodoc
mixin _$MineSync {
  MineType get type => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  int get characterId => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  int get usesLeft => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MineSyncCopyWith<MineSync> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MineSyncCopyWith<$Res> {
  factory $MineSyncCopyWith(MineSync value, $Res Function(MineSync) then) =
      _$MineSyncCopyWithImpl<$Res, MineSync>;
  @useResult
  $Res call({MineType type, double x, int characterId, double y, int usesLeft});
}

/// @nodoc
class _$MineSyncCopyWithImpl<$Res, $Val extends MineSync>
    implements $MineSyncCopyWith<$Res> {
  _$MineSyncCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? x = null,
    Object? characterId = null,
    Object? y = null,
    Object? usesLeft = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MineType,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      usesLeft: null == usesLeft
          ? _value.usesLeft
          : usesLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MineSyncCopyWith<$Res> implements $MineSyncCopyWith<$Res> {
  factory _$$_MineSyncCopyWith(
          _$_MineSync value, $Res Function(_$_MineSync) then) =
      __$$_MineSyncCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MineType type, double x, int characterId, double y, int usesLeft});
}

/// @nodoc
class __$$_MineSyncCopyWithImpl<$Res>
    extends _$MineSyncCopyWithImpl<$Res, _$_MineSync>
    implements _$$_MineSyncCopyWith<$Res> {
  __$$_MineSyncCopyWithImpl(
      _$_MineSync _value, $Res Function(_$_MineSync) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? x = null,
    Object? characterId = null,
    Object? y = null,
    Object? usesLeft = null,
  }) {
    return _then(_$_MineSync(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MineType,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      characterId: null == characterId
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      usesLeft: null == usesLeft
          ? _value.usesLeft
          : usesLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MineSync extends _MineSync {
  _$_MineSync(
      {required this.type,
      required this.x,
      required this.characterId,
      required this.y,
      required this.usesLeft})
      : super._();

  factory _$_MineSync.fromJson(Map<String, dynamic> json) =>
      _$$_MineSyncFromJson(json);

  @override
  final MineType type;
  @override
  final double x;
  @override
  final int characterId;
  @override
  final double y;
  @override
  final int usesLeft;

  @override
  String toString() {
    return 'MineSync(type: $type, x: $x, characterId: $characterId, y: $y, usesLeft: $usesLeft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MineSync &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.usesLeft, usesLeft) ||
                other.usesLeft == usesLeft));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, x, characterId, y, usesLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MineSyncCopyWith<_$_MineSync> get copyWith =>
      __$$_MineSyncCopyWithImpl<_$_MineSync>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MineSyncToJson(
      this,
    );
  }
}

abstract class _MineSync extends MineSync {
  factory _MineSync(
      {required final MineType type,
      required final double x,
      required final int characterId,
      required final double y,
      required final int usesLeft}) = _$_MineSync;
  _MineSync._() : super._();

  factory _MineSync.fromJson(Map<String, dynamic> json) = _$_MineSync.fromJson;

  @override
  MineType get type;
  @override
  double get x;
  @override
  int get characterId;
  @override
  double get y;
  @override
  int get usesLeft;
  @override
  @JsonKey(ignore: true)
  _$$_MineSyncCopyWith<_$_MineSync> get copyWith =>
      throw _privateConstructorUsedError;
}

BulletSync _$BulletSyncFromJson(Map<String, dynamic> json) {
  return _BulletSync.fromJson(json);
}

/// @nodoc
mixin _$BulletSync {
  double get directionX => throw _privateConstructorUsedError;
  double get directionY => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  Team get team => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BulletSyncCopyWith<BulletSync> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulletSyncCopyWith<$Res> {
  factory $BulletSyncCopyWith(
          BulletSync value, $Res Function(BulletSync) then) =
      _$BulletSyncCopyWithImpl<$Res, BulletSync>;
  @useResult
  $Res call(
      {double directionX, double directionY, double x, double y, Team team});
}

/// @nodoc
class _$BulletSyncCopyWithImpl<$Res, $Val extends BulletSync>
    implements $BulletSyncCopyWith<$Res> {
  _$BulletSyncCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directionX = null,
    Object? directionY = null,
    Object? x = null,
    Object? y = null,
    Object? team = null,
  }) {
    return _then(_value.copyWith(
      directionX: null == directionX
          ? _value.directionX
          : directionX // ignore: cast_nullable_to_non_nullable
              as double,
      directionY: null == directionY
          ? _value.directionY
          : directionY // ignore: cast_nullable_to_non_nullable
              as double,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BulletSyncCopyWith<$Res>
    implements $BulletSyncCopyWith<$Res> {
  factory _$$_BulletSyncCopyWith(
          _$_BulletSync value, $Res Function(_$_BulletSync) then) =
      __$$_BulletSyncCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double directionX, double directionY, double x, double y, Team team});
}

/// @nodoc
class __$$_BulletSyncCopyWithImpl<$Res>
    extends _$BulletSyncCopyWithImpl<$Res, _$_BulletSync>
    implements _$$_BulletSyncCopyWith<$Res> {
  __$$_BulletSyncCopyWithImpl(
      _$_BulletSync _value, $Res Function(_$_BulletSync) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directionX = null,
    Object? directionY = null,
    Object? x = null,
    Object? y = null,
    Object? team = null,
  }) {
    return _then(_$_BulletSync(
      directionX: null == directionX
          ? _value.directionX
          : directionX // ignore: cast_nullable_to_non_nullable
              as double,
      directionY: null == directionY
          ? _value.directionY
          : directionY // ignore: cast_nullable_to_non_nullable
              as double,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BulletSync extends _BulletSync {
  _$_BulletSync(
      {required this.directionX,
      required this.directionY,
      required this.x,
      required this.y,
      required this.team})
      : super._();

  factory _$_BulletSync.fromJson(Map<String, dynamic> json) =>
      _$$_BulletSyncFromJson(json);

  @override
  final double directionX;
  @override
  final double directionY;
  @override
  final double x;
  @override
  final double y;
  @override
  final Team team;

  @override
  String toString() {
    return 'BulletSync(directionX: $directionX, directionY: $directionY, x: $x, y: $y, team: $team)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BulletSync &&
            (identical(other.directionX, directionX) ||
                other.directionX == directionX) &&
            (identical(other.directionY, directionY) ||
                other.directionY == directionY) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.team, team) || other.team == team));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, directionX, directionY, x, y, team);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BulletSyncCopyWith<_$_BulletSync> get copyWith =>
      __$$_BulletSyncCopyWithImpl<_$_BulletSync>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BulletSyncToJson(
      this,
    );
  }
}

abstract class _BulletSync extends BulletSync {
  factory _BulletSync(
      {required final double directionX,
      required final double directionY,
      required final double x,
      required final double y,
      required final Team team}) = _$_BulletSync;
  _BulletSync._() : super._();

  factory _BulletSync.fromJson(Map<String, dynamic> json) =
      _$_BulletSync.fromJson;

  @override
  double get directionX;
  @override
  double get directionY;
  @override
  double get x;
  @override
  double get y;
  @override
  Team get team;
  @override
  @JsonKey(ignore: true)
  _$$_BulletSyncCopyWith<_$_BulletSync> get copyWith =>
      throw _privateConstructorUsedError;
}
