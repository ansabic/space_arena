// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_timer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameTimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function() tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? pause,
    TResult? Function()? tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function()? tick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Tick value) tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Tick value)? tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Pause value)? pause,
    TResult Function(_Tick value)? tick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameTimerEventCopyWith<$Res> {
  factory $GameTimerEventCopyWith(
          GameTimerEvent value, $Res Function(GameTimerEvent) then) =
      _$GameTimerEventCopyWithImpl<$Res, GameTimerEvent>;
}

/// @nodoc
class _$GameTimerEventCopyWithImpl<$Res, $Val extends GameTimerEvent>
    implements $GameTimerEventCopyWith<$Res> {
  _$GameTimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartCopyWith<$Res> {
  factory _$$_StartCopyWith(_$_Start value, $Res Function(_$_Start) then) =
      __$$_StartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartCopyWithImpl<$Res>
    extends _$GameTimerEventCopyWithImpl<$Res, _$_Start>
    implements _$$_StartCopyWith<$Res> {
  __$$_StartCopyWithImpl(_$_Start _value, $Res Function(_$_Start) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Start implements _Start {
  const _$_Start();

  @override
  String toString() {
    return 'GameTimerEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Start);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function() tick,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? pause,
    TResult? Function()? tick,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function()? tick,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Tick value) tick,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Tick value)? tick,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Pause value)? pause,
    TResult Function(_Tick value)? tick,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements GameTimerEvent {
  const factory _Start() = _$_Start;
}

/// @nodoc
abstract class _$$_PauseCopyWith<$Res> {
  factory _$$_PauseCopyWith(_$_Pause value, $Res Function(_$_Pause) then) =
      __$$_PauseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PauseCopyWithImpl<$Res>
    extends _$GameTimerEventCopyWithImpl<$Res, _$_Pause>
    implements _$$_PauseCopyWith<$Res> {
  __$$_PauseCopyWithImpl(_$_Pause _value, $Res Function(_$_Pause) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Pause implements _Pause {
  const _$_Pause();

  @override
  String toString() {
    return 'GameTimerEvent.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Pause);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function() tick,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? pause,
    TResult? Function()? tick,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function()? tick,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Tick value) tick,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Tick value)? tick,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Pause value)? pause,
    TResult Function(_Tick value)? tick,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _Pause implements GameTimerEvent {
  const factory _Pause() = _$_Pause;
}

/// @nodoc
abstract class _$$_TickCopyWith<$Res> {
  factory _$$_TickCopyWith(_$_Tick value, $Res Function(_$_Tick) then) =
      __$$_TickCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TickCopyWithImpl<$Res>
    extends _$GameTimerEventCopyWithImpl<$Res, _$_Tick>
    implements _$$_TickCopyWith<$Res> {
  __$$_TickCopyWithImpl(_$_Tick _value, $Res Function(_$_Tick) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Tick implements _Tick {
  const _$_Tick();

  @override
  String toString() {
    return 'GameTimerEvent.tick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Tick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function() tick,
  }) {
    return tick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? pause,
    TResult? Function()? tick,
  }) {
    return tick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function()? tick,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Tick value) tick,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Tick value)? tick,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Pause value)? pause,
    TResult Function(_Tick value)? tick,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class _Tick implements GameTimerEvent {
  const factory _Tick() = _$_Tick;
}

/// @nodoc
mixin _$GameTimerState {
  int get seconds => throw _privateConstructorUsedError;
  TimerStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameTimerStateCopyWith<GameTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameTimerStateCopyWith<$Res> {
  factory $GameTimerStateCopyWith(
          GameTimerState value, $Res Function(GameTimerState) then) =
      _$GameTimerStateCopyWithImpl<$Res, GameTimerState>;
  @useResult
  $Res call({int seconds, TimerStatus status});
}

/// @nodoc
class _$GameTimerStateCopyWithImpl<$Res, $Val extends GameTimerState>
    implements $GameTimerStateCopyWith<$Res> {
  _$GameTimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TimerStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameTimerStateCopyWith<$Res>
    implements $GameTimerStateCopyWith<$Res> {
  factory _$$_GameTimerStateCopyWith(
          _$_GameTimerState value, $Res Function(_$_GameTimerState) then) =
      __$$_GameTimerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seconds, TimerStatus status});
}

/// @nodoc
class __$$_GameTimerStateCopyWithImpl<$Res>
    extends _$GameTimerStateCopyWithImpl<$Res, _$_GameTimerState>
    implements _$$_GameTimerStateCopyWith<$Res> {
  __$$_GameTimerStateCopyWithImpl(
      _$_GameTimerState _value, $Res Function(_$_GameTimerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
    Object? status = null,
  }) {
    return _then(_$_GameTimerState(
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TimerStatus,
    ));
  }
}

/// @nodoc

class _$_GameTimerState implements _GameTimerState {
  const _$_GameTimerState({required this.seconds, required this.status});

  @override
  final int seconds;
  @override
  final TimerStatus status;

  @override
  String toString() {
    return 'GameTimerState(seconds: $seconds, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameTimerState &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seconds, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameTimerStateCopyWith<_$_GameTimerState> get copyWith =>
      __$$_GameTimerStateCopyWithImpl<_$_GameTimerState>(this, _$identity);
}

abstract class _GameTimerState implements GameTimerState {
  const factory _GameTimerState(
      {required final int seconds,
      required final TimerStatus status}) = _$_GameTimerState;

  @override
  int get seconds;
  @override
  TimerStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_GameTimerStateCopyWith<_$_GameTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
