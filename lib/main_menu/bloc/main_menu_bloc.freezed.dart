// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainMenuEvent {
  MainMenuEntry get entry => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainMenuEntry entry) changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainMenuEntry entry)? changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainMenuEntry entry)? changePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePage value) changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePage value)? changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainMenuEventCopyWith<MainMenuEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainMenuEventCopyWith<$Res> {
  factory $MainMenuEventCopyWith(
          MainMenuEvent value, $Res Function(MainMenuEvent) then) =
      _$MainMenuEventCopyWithImpl<$Res, MainMenuEvent>;
  @useResult
  $Res call({MainMenuEntry entry});
}

/// @nodoc
class _$MainMenuEventCopyWithImpl<$Res, $Val extends MainMenuEvent>
    implements $MainMenuEventCopyWith<$Res> {
  _$MainMenuEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
  }) {
    return _then(_value.copyWith(
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as MainMenuEntry,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePageCopyWith<$Res>
    implements $MainMenuEventCopyWith<$Res> {
  factory _$$_ChangePageCopyWith(
          _$_ChangePage value, $Res Function(_$_ChangePage) then) =
      __$$_ChangePageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainMenuEntry entry});
}

/// @nodoc
class __$$_ChangePageCopyWithImpl<$Res>
    extends _$MainMenuEventCopyWithImpl<$Res, _$_ChangePage>
    implements _$$_ChangePageCopyWith<$Res> {
  __$$_ChangePageCopyWithImpl(
      _$_ChangePage _value, $Res Function(_$_ChangePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
  }) {
    return _then(_$_ChangePage(
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as MainMenuEntry,
    ));
  }
}

/// @nodoc

class _$_ChangePage implements _ChangePage {
  const _$_ChangePage({required this.entry});

  @override
  final MainMenuEntry entry;

  @override
  String toString() {
    return 'MainMenuEvent.changePage(entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePage &&
            (identical(other.entry, entry) || other.entry == entry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePageCopyWith<_$_ChangePage> get copyWith =>
      __$$_ChangePageCopyWithImpl<_$_ChangePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainMenuEntry entry) changePage,
  }) {
    return changePage(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainMenuEntry entry)? changePage,
  }) {
    return changePage?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainMenuEntry entry)? changePage,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePage value) changePage,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePage value)? changePage,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class _ChangePage implements MainMenuEvent {
  const factory _ChangePage({required final MainMenuEntry entry}) =
      _$_ChangePage;

  @override
  MainMenuEntry get entry;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePageCopyWith<_$_ChangePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainMenuState {
  MainMenuEntry get entry => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainMenuStateCopyWith<MainMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainMenuStateCopyWith<$Res> {
  factory $MainMenuStateCopyWith(
          MainMenuState value, $Res Function(MainMenuState) then) =
      _$MainMenuStateCopyWithImpl<$Res, MainMenuState>;
  @useResult
  $Res call({MainMenuEntry entry});
}

/// @nodoc
class _$MainMenuStateCopyWithImpl<$Res, $Val extends MainMenuState>
    implements $MainMenuStateCopyWith<$Res> {
  _$MainMenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
  }) {
    return _then(_value.copyWith(
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as MainMenuEntry,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainMenuStateCopyWith<$Res>
    implements $MainMenuStateCopyWith<$Res> {
  factory _$$_MainMenuStateCopyWith(
          _$_MainMenuState value, $Res Function(_$_MainMenuState) then) =
      __$$_MainMenuStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainMenuEntry entry});
}

/// @nodoc
class __$$_MainMenuStateCopyWithImpl<$Res>
    extends _$MainMenuStateCopyWithImpl<$Res, _$_MainMenuState>
    implements _$$_MainMenuStateCopyWith<$Res> {
  __$$_MainMenuStateCopyWithImpl(
      _$_MainMenuState _value, $Res Function(_$_MainMenuState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
  }) {
    return _then(_$_MainMenuState(
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as MainMenuEntry,
    ));
  }
}

/// @nodoc

class _$_MainMenuState implements _MainMenuState {
  const _$_MainMenuState({required this.entry});

  @override
  final MainMenuEntry entry;

  @override
  String toString() {
    return 'MainMenuState(entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainMenuState &&
            (identical(other.entry, entry) || other.entry == entry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainMenuStateCopyWith<_$_MainMenuState> get copyWith =>
      __$$_MainMenuStateCopyWithImpl<_$_MainMenuState>(this, _$identity);
}

abstract class _MainMenuState implements MainMenuState {
  const factory _MainMenuState({required final MainMenuEntry entry}) =
      _$_MainMenuState;

  @override
  MainMenuEntry get entry;
  @override
  @JsonKey(ignore: true)
  _$$_MainMenuStateCopyWith<_$_MainMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
