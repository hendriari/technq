// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenuState {
  int get indexMenu => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int indexMenu) init,
    required TResult Function(int indexMenu) changedIndex,
    required TResult Function(int indexMenu, bool exit, DateTime timeExit)
        exitApp,
    required TResult Function(int indexMenu, String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int indexMenu)? init,
    TResult? Function(int indexMenu)? changedIndex,
    TResult? Function(int indexMenu, bool exit, DateTime timeExit)? exitApp,
    TResult? Function(int indexMenu, String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int indexMenu)? init,
    TResult Function(int indexMenu)? changedIndex,
    TResult Function(int indexMenu, bool exit, DateTime timeExit)? exitApp,
    TResult Function(int indexMenu, String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangedIndex value) changedIndex,
    required TResult Function(_ExitApp value) exitApp,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangedIndex value)? changedIndex,
    TResult? Function(_ExitApp value)? exitApp,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangedIndex value)? changedIndex,
    TResult Function(_ExitApp value)? exitApp,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuStateCopyWith<MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res, MenuState>;
  @useResult
  $Res call({int indexMenu});
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res, $Val extends MenuState>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexMenu = null,
  }) {
    return _then(_value.copyWith(
      indexMenu: null == indexMenu
          ? _value.indexMenu
          : indexMenu // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> implements $MenuStateCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int indexMenu});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexMenu = null,
  }) {
    return _then(_$InitImpl(
      indexMenu: null == indexMenu
          ? _value.indexMenu
          : indexMenu // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  _$InitImpl({this.indexMenu = 0});

  @override
  @JsonKey()
  final int indexMenu;

  @override
  String toString() {
    return 'MenuState.init(indexMenu: $indexMenu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.indexMenu, indexMenu) ||
                other.indexMenu == indexMenu));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indexMenu);

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int indexMenu) init,
    required TResult Function(int indexMenu) changedIndex,
    required TResult Function(int indexMenu, bool exit, DateTime timeExit)
        exitApp,
    required TResult Function(int indexMenu, String message) failed,
  }) {
    return init(indexMenu);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int indexMenu)? init,
    TResult? Function(int indexMenu)? changedIndex,
    TResult? Function(int indexMenu, bool exit, DateTime timeExit)? exitApp,
    TResult? Function(int indexMenu, String message)? failed,
  }) {
    return init?.call(indexMenu);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int indexMenu)? init,
    TResult Function(int indexMenu)? changedIndex,
    TResult Function(int indexMenu, bool exit, DateTime timeExit)? exitApp,
    TResult Function(int indexMenu, String message)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(indexMenu);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangedIndex value) changedIndex,
    required TResult Function(_ExitApp value) exitApp,
    required TResult Function(_Failed value) failed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangedIndex value)? changedIndex,
    TResult? Function(_ExitApp value)? exitApp,
    TResult? Function(_Failed value)? failed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangedIndex value)? changedIndex,
    TResult Function(_ExitApp value)? exitApp,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements MenuState {
  factory _Init({final int indexMenu}) = _$InitImpl;

  @override
  int get indexMenu;

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedIndexImplCopyWith<$Res>
    implements $MenuStateCopyWith<$Res> {
  factory _$$ChangedIndexImplCopyWith(
          _$ChangedIndexImpl value, $Res Function(_$ChangedIndexImpl) then) =
      __$$ChangedIndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int indexMenu});
}

/// @nodoc
class __$$ChangedIndexImplCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$ChangedIndexImpl>
    implements _$$ChangedIndexImplCopyWith<$Res> {
  __$$ChangedIndexImplCopyWithImpl(
      _$ChangedIndexImpl _value, $Res Function(_$ChangedIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexMenu = null,
  }) {
    return _then(_$ChangedIndexImpl(
      indexMenu: null == indexMenu
          ? _value.indexMenu
          : indexMenu // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangedIndexImpl implements _ChangedIndex {
  _$ChangedIndexImpl({this.indexMenu = 0});

  @override
  @JsonKey()
  final int indexMenu;

  @override
  String toString() {
    return 'MenuState.changedIndex(indexMenu: $indexMenu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedIndexImpl &&
            (identical(other.indexMenu, indexMenu) ||
                other.indexMenu == indexMenu));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indexMenu);

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedIndexImplCopyWith<_$ChangedIndexImpl> get copyWith =>
      __$$ChangedIndexImplCopyWithImpl<_$ChangedIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int indexMenu) init,
    required TResult Function(int indexMenu) changedIndex,
    required TResult Function(int indexMenu, bool exit, DateTime timeExit)
        exitApp,
    required TResult Function(int indexMenu, String message) failed,
  }) {
    return changedIndex(indexMenu);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int indexMenu)? init,
    TResult? Function(int indexMenu)? changedIndex,
    TResult? Function(int indexMenu, bool exit, DateTime timeExit)? exitApp,
    TResult? Function(int indexMenu, String message)? failed,
  }) {
    return changedIndex?.call(indexMenu);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int indexMenu)? init,
    TResult Function(int indexMenu)? changedIndex,
    TResult Function(int indexMenu, bool exit, DateTime timeExit)? exitApp,
    TResult Function(int indexMenu, String message)? failed,
    required TResult orElse(),
  }) {
    if (changedIndex != null) {
      return changedIndex(indexMenu);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangedIndex value) changedIndex,
    required TResult Function(_ExitApp value) exitApp,
    required TResult Function(_Failed value) failed,
  }) {
    return changedIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangedIndex value)? changedIndex,
    TResult? Function(_ExitApp value)? exitApp,
    TResult? Function(_Failed value)? failed,
  }) {
    return changedIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangedIndex value)? changedIndex,
    TResult Function(_ExitApp value)? exitApp,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (changedIndex != null) {
      return changedIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangedIndex implements MenuState {
  factory _ChangedIndex({final int indexMenu}) = _$ChangedIndexImpl;

  @override
  int get indexMenu;

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangedIndexImplCopyWith<_$ChangedIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExitAppImplCopyWith<$Res>
    implements $MenuStateCopyWith<$Res> {
  factory _$$ExitAppImplCopyWith(
          _$ExitAppImpl value, $Res Function(_$ExitAppImpl) then) =
      __$$ExitAppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int indexMenu, bool exit, DateTime timeExit});
}

/// @nodoc
class __$$ExitAppImplCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$ExitAppImpl>
    implements _$$ExitAppImplCopyWith<$Res> {
  __$$ExitAppImplCopyWithImpl(
      _$ExitAppImpl _value, $Res Function(_$ExitAppImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexMenu = null,
    Object? exit = null,
    Object? timeExit = null,
  }) {
    return _then(_$ExitAppImpl(
      indexMenu: null == indexMenu
          ? _value.indexMenu
          : indexMenu // ignore: cast_nullable_to_non_nullable
              as int,
      exit: null == exit
          ? _value.exit
          : exit // ignore: cast_nullable_to_non_nullable
              as bool,
      timeExit: null == timeExit
          ? _value.timeExit
          : timeExit // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ExitAppImpl implements _ExitApp {
  _$ExitAppImpl(
      {this.indexMenu = 0, required this.exit, required this.timeExit});

  @override
  @JsonKey()
  final int indexMenu;
  @override
  final bool exit;
  @override
  final DateTime timeExit;

  @override
  String toString() {
    return 'MenuState.exitApp(indexMenu: $indexMenu, exit: $exit, timeExit: $timeExit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExitAppImpl &&
            (identical(other.indexMenu, indexMenu) ||
                other.indexMenu == indexMenu) &&
            (identical(other.exit, exit) || other.exit == exit) &&
            (identical(other.timeExit, timeExit) ||
                other.timeExit == timeExit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indexMenu, exit, timeExit);

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExitAppImplCopyWith<_$ExitAppImpl> get copyWith =>
      __$$ExitAppImplCopyWithImpl<_$ExitAppImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int indexMenu) init,
    required TResult Function(int indexMenu) changedIndex,
    required TResult Function(int indexMenu, bool exit, DateTime timeExit)
        exitApp,
    required TResult Function(int indexMenu, String message) failed,
  }) {
    return exitApp(indexMenu, exit, timeExit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int indexMenu)? init,
    TResult? Function(int indexMenu)? changedIndex,
    TResult? Function(int indexMenu, bool exit, DateTime timeExit)? exitApp,
    TResult? Function(int indexMenu, String message)? failed,
  }) {
    return exitApp?.call(indexMenu, exit, timeExit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int indexMenu)? init,
    TResult Function(int indexMenu)? changedIndex,
    TResult Function(int indexMenu, bool exit, DateTime timeExit)? exitApp,
    TResult Function(int indexMenu, String message)? failed,
    required TResult orElse(),
  }) {
    if (exitApp != null) {
      return exitApp(indexMenu, exit, timeExit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangedIndex value) changedIndex,
    required TResult Function(_ExitApp value) exitApp,
    required TResult Function(_Failed value) failed,
  }) {
    return exitApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangedIndex value)? changedIndex,
    TResult? Function(_ExitApp value)? exitApp,
    TResult? Function(_Failed value)? failed,
  }) {
    return exitApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangedIndex value)? changedIndex,
    TResult Function(_ExitApp value)? exitApp,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (exitApp != null) {
      return exitApp(this);
    }
    return orElse();
  }
}

abstract class _ExitApp implements MenuState {
  factory _ExitApp(
      {final int indexMenu,
      required final bool exit,
      required final DateTime timeExit}) = _$ExitAppImpl;

  @override
  int get indexMenu;
  bool get exit;
  DateTime get timeExit;

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExitAppImplCopyWith<_$ExitAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> implements $MenuStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int indexMenu, String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexMenu = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      indexMenu: null == indexMenu
          ? _value.indexMenu
          : indexMenu // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  _$FailedImpl({this.indexMenu = 0, required this.message});

  @override
  @JsonKey()
  final int indexMenu;
  @override
  final String message;

  @override
  String toString() {
    return 'MenuState.failed(indexMenu: $indexMenu, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.indexMenu, indexMenu) ||
                other.indexMenu == indexMenu) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indexMenu, message);

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int indexMenu) init,
    required TResult Function(int indexMenu) changedIndex,
    required TResult Function(int indexMenu, bool exit, DateTime timeExit)
        exitApp,
    required TResult Function(int indexMenu, String message) failed,
  }) {
    return failed(indexMenu, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int indexMenu)? init,
    TResult? Function(int indexMenu)? changedIndex,
    TResult? Function(int indexMenu, bool exit, DateTime timeExit)? exitApp,
    TResult? Function(int indexMenu, String message)? failed,
  }) {
    return failed?.call(indexMenu, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int indexMenu)? init,
    TResult Function(int indexMenu)? changedIndex,
    TResult Function(int indexMenu, bool exit, DateTime timeExit)? exitApp,
    TResult Function(int indexMenu, String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(indexMenu, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangedIndex value) changedIndex,
    required TResult Function(_ExitApp value) exitApp,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangedIndex value)? changedIndex,
    TResult? Function(_ExitApp value)? exitApp,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangedIndex value)? changedIndex,
    TResult Function(_ExitApp value)? exitApp,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements MenuState {
  factory _Failed({final int indexMenu, required final String message}) =
      _$FailedImpl;

  @override
  int get indexMenu;
  String get message;

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
