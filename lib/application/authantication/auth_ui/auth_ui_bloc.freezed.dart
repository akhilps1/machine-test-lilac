// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_ui_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthUiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showLogin) showLogin,
    required TResult Function(bool showPassword) showPassword,
    required TResult Function(bool showResendBurron) showResendBurron,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showLogin)? showLogin,
    TResult? Function(bool showPassword)? showPassword,
    TResult? Function(bool showResendBurron)? showResendBurron,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showLogin)? showLogin,
    TResult Function(bool showPassword)? showPassword,
    TResult Function(bool showResendBurron)? showResendBurron,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLogin value) showLogin,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowResendBurron value) showResendBurron,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLogin value)? showLogin,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowResendBurron value)? showResendBurron,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLogin value)? showLogin,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowResendBurron value)? showResendBurron,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUiEventCopyWith<$Res> {
  factory $AuthUiEventCopyWith(
          AuthUiEvent value, $Res Function(AuthUiEvent) then) =
      _$AuthUiEventCopyWithImpl<$Res, AuthUiEvent>;
}

/// @nodoc
class _$AuthUiEventCopyWithImpl<$Res, $Val extends AuthUiEvent>
    implements $AuthUiEventCopyWith<$Res> {
  _$AuthUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowLoginImplCopyWith<$Res> {
  factory _$$ShowLoginImplCopyWith(
          _$ShowLoginImpl value, $Res Function(_$ShowLoginImpl) then) =
      __$$ShowLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showLogin});
}

/// @nodoc
class __$$ShowLoginImplCopyWithImpl<$Res>
    extends _$AuthUiEventCopyWithImpl<$Res, _$ShowLoginImpl>
    implements _$$ShowLoginImplCopyWith<$Res> {
  __$$ShowLoginImplCopyWithImpl(
      _$ShowLoginImpl _value, $Res Function(_$ShowLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLogin = null,
  }) {
    return _then(_$ShowLoginImpl(
      null == showLogin
          ? _value.showLogin
          : showLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowLoginImpl implements ShowLogin {
  const _$ShowLoginImpl(this.showLogin);

  @override
  final bool showLogin;

  @override
  String toString() {
    return 'AuthUiEvent.showLogin(showLogin: $showLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowLoginImpl &&
            (identical(other.showLogin, showLogin) ||
                other.showLogin == showLogin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowLoginImplCopyWith<_$ShowLoginImpl> get copyWith =>
      __$$ShowLoginImplCopyWithImpl<_$ShowLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showLogin) showLogin,
    required TResult Function(bool showPassword) showPassword,
    required TResult Function(bool showResendBurron) showResendBurron,
  }) {
    return showLogin(this.showLogin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showLogin)? showLogin,
    TResult? Function(bool showPassword)? showPassword,
    TResult? Function(bool showResendBurron)? showResendBurron,
  }) {
    return showLogin?.call(this.showLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showLogin)? showLogin,
    TResult Function(bool showPassword)? showPassword,
    TResult Function(bool showResendBurron)? showResendBurron,
    required TResult orElse(),
  }) {
    if (showLogin != null) {
      return showLogin(this.showLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLogin value) showLogin,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowResendBurron value) showResendBurron,
  }) {
    return showLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLogin value)? showLogin,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowResendBurron value)? showResendBurron,
  }) {
    return showLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLogin value)? showLogin,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowResendBurron value)? showResendBurron,
    required TResult orElse(),
  }) {
    if (showLogin != null) {
      return showLogin(this);
    }
    return orElse();
  }
}

abstract class ShowLogin implements AuthUiEvent {
  const factory ShowLogin(final bool showLogin) = _$ShowLoginImpl;

  bool get showLogin;
  @JsonKey(ignore: true)
  _$$ShowLoginImplCopyWith<_$ShowLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowPasswordImplCopyWith<$Res> {
  factory _$$ShowPasswordImplCopyWith(
          _$ShowPasswordImpl value, $Res Function(_$ShowPasswordImpl) then) =
      __$$ShowPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showPassword});
}

/// @nodoc
class __$$ShowPasswordImplCopyWithImpl<$Res>
    extends _$AuthUiEventCopyWithImpl<$Res, _$ShowPasswordImpl>
    implements _$$ShowPasswordImplCopyWith<$Res> {
  __$$ShowPasswordImplCopyWithImpl(
      _$ShowPasswordImpl _value, $Res Function(_$ShowPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showPassword = null,
  }) {
    return _then(_$ShowPasswordImpl(
      null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowPasswordImpl implements ShowPassword {
  const _$ShowPasswordImpl(this.showPassword);

  @override
  final bool showPassword;

  @override
  String toString() {
    return 'AuthUiEvent.showPassword(showPassword: $showPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowPasswordImpl &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowPasswordImplCopyWith<_$ShowPasswordImpl> get copyWith =>
      __$$ShowPasswordImplCopyWithImpl<_$ShowPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showLogin) showLogin,
    required TResult Function(bool showPassword) showPassword,
    required TResult Function(bool showResendBurron) showResendBurron,
  }) {
    return showPassword(this.showPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showLogin)? showLogin,
    TResult? Function(bool showPassword)? showPassword,
    TResult? Function(bool showResendBurron)? showResendBurron,
  }) {
    return showPassword?.call(this.showPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showLogin)? showLogin,
    TResult Function(bool showPassword)? showPassword,
    TResult Function(bool showResendBurron)? showResendBurron,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(this.showPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLogin value) showLogin,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowResendBurron value) showResendBurron,
  }) {
    return showPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLogin value)? showLogin,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowResendBurron value)? showResendBurron,
  }) {
    return showPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLogin value)? showLogin,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowResendBurron value)? showResendBurron,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(this);
    }
    return orElse();
  }
}

abstract class ShowPassword implements AuthUiEvent {
  const factory ShowPassword(final bool showPassword) = _$ShowPasswordImpl;

  bool get showPassword;
  @JsonKey(ignore: true)
  _$$ShowPasswordImplCopyWith<_$ShowPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowResendBurronImplCopyWith<$Res> {
  factory _$$ShowResendBurronImplCopyWith(_$ShowResendBurronImpl value,
          $Res Function(_$ShowResendBurronImpl) then) =
      __$$ShowResendBurronImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showResendBurron});
}

/// @nodoc
class __$$ShowResendBurronImplCopyWithImpl<$Res>
    extends _$AuthUiEventCopyWithImpl<$Res, _$ShowResendBurronImpl>
    implements _$$ShowResendBurronImplCopyWith<$Res> {
  __$$ShowResendBurronImplCopyWithImpl(_$ShowResendBurronImpl _value,
      $Res Function(_$ShowResendBurronImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showResendBurron = null,
  }) {
    return _then(_$ShowResendBurronImpl(
      null == showResendBurron
          ? _value.showResendBurron
          : showResendBurron // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowResendBurronImpl implements ShowResendBurron {
  const _$ShowResendBurronImpl(this.showResendBurron);

  @override
  final bool showResendBurron;

  @override
  String toString() {
    return 'AuthUiEvent.showResendBurron(showResendBurron: $showResendBurron)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowResendBurronImpl &&
            (identical(other.showResendBurron, showResendBurron) ||
                other.showResendBurron == showResendBurron));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showResendBurron);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowResendBurronImplCopyWith<_$ShowResendBurronImpl> get copyWith =>
      __$$ShowResendBurronImplCopyWithImpl<_$ShowResendBurronImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showLogin) showLogin,
    required TResult Function(bool showPassword) showPassword,
    required TResult Function(bool showResendBurron) showResendBurron,
  }) {
    return showResendBurron(this.showResendBurron);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showLogin)? showLogin,
    TResult? Function(bool showPassword)? showPassword,
    TResult? Function(bool showResendBurron)? showResendBurron,
  }) {
    return showResendBurron?.call(this.showResendBurron);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showLogin)? showLogin,
    TResult Function(bool showPassword)? showPassword,
    TResult Function(bool showResendBurron)? showResendBurron,
    required TResult orElse(),
  }) {
    if (showResendBurron != null) {
      return showResendBurron(this.showResendBurron);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLogin value) showLogin,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowResendBurron value) showResendBurron,
  }) {
    return showResendBurron(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLogin value)? showLogin,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowResendBurron value)? showResendBurron,
  }) {
    return showResendBurron?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLogin value)? showLogin,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowResendBurron value)? showResendBurron,
    required TResult orElse(),
  }) {
    if (showResendBurron != null) {
      return showResendBurron(this);
    }
    return orElse();
  }
}

abstract class ShowResendBurron implements AuthUiEvent {
  const factory ShowResendBurron(final bool showResendBurron) =
      _$ShowResendBurronImpl;

  bool get showResendBurron;
  @JsonKey(ignore: true)
  _$$ShowResendBurronImplCopyWith<_$ShowResendBurronImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthUiState {
  bool get showLogin => throw _privateConstructorUsedError;
  bool get showPassword => throw _privateConstructorUsedError;
  bool get showResendButton => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthUiStateCopyWith<AuthUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUiStateCopyWith<$Res> {
  factory $AuthUiStateCopyWith(
          AuthUiState value, $Res Function(AuthUiState) then) =
      _$AuthUiStateCopyWithImpl<$Res, AuthUiState>;
  @useResult
  $Res call({bool showLogin, bool showPassword, bool showResendButton});
}

/// @nodoc
class _$AuthUiStateCopyWithImpl<$Res, $Val extends AuthUiState>
    implements $AuthUiStateCopyWith<$Res> {
  _$AuthUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLogin = null,
    Object? showPassword = null,
    Object? showResendButton = null,
  }) {
    return _then(_value.copyWith(
      showLogin: null == showLogin
          ? _value.showLogin
          : showLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showResendButton: null == showResendButton
          ? _value.showResendButton
          : showResendButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthUiStateImplCopyWith<$Res>
    implements $AuthUiStateCopyWith<$Res> {
  factory _$$AuthUiStateImplCopyWith(
          _$AuthUiStateImpl value, $Res Function(_$AuthUiStateImpl) then) =
      __$$AuthUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showLogin, bool showPassword, bool showResendButton});
}

/// @nodoc
class __$$AuthUiStateImplCopyWithImpl<$Res>
    extends _$AuthUiStateCopyWithImpl<$Res, _$AuthUiStateImpl>
    implements _$$AuthUiStateImplCopyWith<$Res> {
  __$$AuthUiStateImplCopyWithImpl(
      _$AuthUiStateImpl _value, $Res Function(_$AuthUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLogin = null,
    Object? showPassword = null,
    Object? showResendButton = null,
  }) {
    return _then(_$AuthUiStateImpl(
      showLogin: null == showLogin
          ? _value.showLogin
          : showLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showResendButton: null == showResendButton
          ? _value.showResendButton
          : showResendButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthUiStateImpl implements _AuthUiState {
  const _$AuthUiStateImpl(
      {required this.showLogin,
      required this.showPassword,
      required this.showResendButton});

  @override
  final bool showLogin;
  @override
  final bool showPassword;
  @override
  final bool showResendButton;

  @override
  String toString() {
    return 'AuthUiState(showLogin: $showLogin, showPassword: $showPassword, showResendButton: $showResendButton)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUiStateImpl &&
            (identical(other.showLogin, showLogin) ||
                other.showLogin == showLogin) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.showResendButton, showResendButton) ||
                other.showResendButton == showResendButton));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, showLogin, showPassword, showResendButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUiStateImplCopyWith<_$AuthUiStateImpl> get copyWith =>
      __$$AuthUiStateImplCopyWithImpl<_$AuthUiStateImpl>(this, _$identity);
}

abstract class _AuthUiState implements AuthUiState {
  const factory _AuthUiState(
      {required final bool showLogin,
      required final bool showPassword,
      required final bool showResendButton}) = _$AuthUiStateImpl;

  @override
  bool get showLogin;
  @override
  bool get showPassword;
  @override
  bool get showResendButton;
  @override
  @JsonKey(ignore: true)
  _$$AuthUiStateImplCopyWith<_$AuthUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
