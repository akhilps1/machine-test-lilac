// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playNext,
    required TResult Function() playPrevious,
    required TResult Function() getDownloadedVideoId,
    required TResult Function(String videoId) downloadAndEncrypt,
    required TResult Function(String videoId) getDecreptedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playNext,
    TResult? Function()? playPrevious,
    TResult? Function()? getDownloadedVideoId,
    TResult? Function(String videoId)? downloadAndEncrypt,
    TResult? Function(String videoId)? getDecreptedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playNext,
    TResult Function()? playPrevious,
    TResult Function()? getDownloadedVideoId,
    TResult Function(String videoId)? downloadAndEncrypt,
    TResult Function(String videoId)? getDecreptedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayNext value) playNext,
    required TResult Function(PlayPrevious value) playPrevious,
    required TResult Function(GetDownloadedVideoId value) getDownloadedVideoId,
    required TResult Function(DownloadAndEncrypt value) downloadAndEncrypt,
    required TResult Function(GetDecreptedData value) getDecreptedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayNext value)? playNext,
    TResult? Function(PlayPrevious value)? playPrevious,
    TResult? Function(GetDownloadedVideoId value)? getDownloadedVideoId,
    TResult? Function(DownloadAndEncrypt value)? downloadAndEncrypt,
    TResult? Function(GetDecreptedData value)? getDecreptedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayNext value)? playNext,
    TResult Function(PlayPrevious value)? playPrevious,
    TResult Function(GetDownloadedVideoId value)? getDownloadedVideoId,
    TResult Function(DownloadAndEncrypt value)? downloadAndEncrypt,
    TResult Function(GetDecreptedData value)? getDecreptedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerEventCopyWith<$Res> {
  factory $VideoPlayerEventCopyWith(
          VideoPlayerEvent value, $Res Function(VideoPlayerEvent) then) =
      _$VideoPlayerEventCopyWithImpl<$Res, VideoPlayerEvent>;
}

/// @nodoc
class _$VideoPlayerEventCopyWithImpl<$Res, $Val extends VideoPlayerEvent>
    implements $VideoPlayerEventCopyWith<$Res> {
  _$VideoPlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlayNextImplCopyWith<$Res> {
  factory _$$PlayNextImplCopyWith(
          _$PlayNextImpl value, $Res Function(_$PlayNextImpl) then) =
      __$$PlayNextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayNextImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$PlayNextImpl>
    implements _$$PlayNextImplCopyWith<$Res> {
  __$$PlayNextImplCopyWithImpl(
      _$PlayNextImpl _value, $Res Function(_$PlayNextImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayNextImpl implements PlayNext {
  const _$PlayNextImpl();

  @override
  String toString() {
    return 'VideoPlayerEvent.playNext()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayNextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playNext,
    required TResult Function() playPrevious,
    required TResult Function() getDownloadedVideoId,
    required TResult Function(String videoId) downloadAndEncrypt,
    required TResult Function(String videoId) getDecreptedData,
  }) {
    return playNext();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playNext,
    TResult? Function()? playPrevious,
    TResult? Function()? getDownloadedVideoId,
    TResult? Function(String videoId)? downloadAndEncrypt,
    TResult? Function(String videoId)? getDecreptedData,
  }) {
    return playNext?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playNext,
    TResult Function()? playPrevious,
    TResult Function()? getDownloadedVideoId,
    TResult Function(String videoId)? downloadAndEncrypt,
    TResult Function(String videoId)? getDecreptedData,
    required TResult orElse(),
  }) {
    if (playNext != null) {
      return playNext();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayNext value) playNext,
    required TResult Function(PlayPrevious value) playPrevious,
    required TResult Function(GetDownloadedVideoId value) getDownloadedVideoId,
    required TResult Function(DownloadAndEncrypt value) downloadAndEncrypt,
    required TResult Function(GetDecreptedData value) getDecreptedData,
  }) {
    return playNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayNext value)? playNext,
    TResult? Function(PlayPrevious value)? playPrevious,
    TResult? Function(GetDownloadedVideoId value)? getDownloadedVideoId,
    TResult? Function(DownloadAndEncrypt value)? downloadAndEncrypt,
    TResult? Function(GetDecreptedData value)? getDecreptedData,
  }) {
    return playNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayNext value)? playNext,
    TResult Function(PlayPrevious value)? playPrevious,
    TResult Function(GetDownloadedVideoId value)? getDownloadedVideoId,
    TResult Function(DownloadAndEncrypt value)? downloadAndEncrypt,
    TResult Function(GetDecreptedData value)? getDecreptedData,
    required TResult orElse(),
  }) {
    if (playNext != null) {
      return playNext(this);
    }
    return orElse();
  }
}

abstract class PlayNext implements VideoPlayerEvent {
  const factory PlayNext() = _$PlayNextImpl;
}

/// @nodoc
abstract class _$$PlayPreviousImplCopyWith<$Res> {
  factory _$$PlayPreviousImplCopyWith(
          _$PlayPreviousImpl value, $Res Function(_$PlayPreviousImpl) then) =
      __$$PlayPreviousImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayPreviousImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$PlayPreviousImpl>
    implements _$$PlayPreviousImplCopyWith<$Res> {
  __$$PlayPreviousImplCopyWithImpl(
      _$PlayPreviousImpl _value, $Res Function(_$PlayPreviousImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayPreviousImpl implements PlayPrevious {
  const _$PlayPreviousImpl();

  @override
  String toString() {
    return 'VideoPlayerEvent.playPrevious()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayPreviousImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playNext,
    required TResult Function() playPrevious,
    required TResult Function() getDownloadedVideoId,
    required TResult Function(String videoId) downloadAndEncrypt,
    required TResult Function(String videoId) getDecreptedData,
  }) {
    return playPrevious();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playNext,
    TResult? Function()? playPrevious,
    TResult? Function()? getDownloadedVideoId,
    TResult? Function(String videoId)? downloadAndEncrypt,
    TResult? Function(String videoId)? getDecreptedData,
  }) {
    return playPrevious?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playNext,
    TResult Function()? playPrevious,
    TResult Function()? getDownloadedVideoId,
    TResult Function(String videoId)? downloadAndEncrypt,
    TResult Function(String videoId)? getDecreptedData,
    required TResult orElse(),
  }) {
    if (playPrevious != null) {
      return playPrevious();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayNext value) playNext,
    required TResult Function(PlayPrevious value) playPrevious,
    required TResult Function(GetDownloadedVideoId value) getDownloadedVideoId,
    required TResult Function(DownloadAndEncrypt value) downloadAndEncrypt,
    required TResult Function(GetDecreptedData value) getDecreptedData,
  }) {
    return playPrevious(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayNext value)? playNext,
    TResult? Function(PlayPrevious value)? playPrevious,
    TResult? Function(GetDownloadedVideoId value)? getDownloadedVideoId,
    TResult? Function(DownloadAndEncrypt value)? downloadAndEncrypt,
    TResult? Function(GetDecreptedData value)? getDecreptedData,
  }) {
    return playPrevious?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayNext value)? playNext,
    TResult Function(PlayPrevious value)? playPrevious,
    TResult Function(GetDownloadedVideoId value)? getDownloadedVideoId,
    TResult Function(DownloadAndEncrypt value)? downloadAndEncrypt,
    TResult Function(GetDecreptedData value)? getDecreptedData,
    required TResult orElse(),
  }) {
    if (playPrevious != null) {
      return playPrevious(this);
    }
    return orElse();
  }
}

abstract class PlayPrevious implements VideoPlayerEvent {
  const factory PlayPrevious() = _$PlayPreviousImpl;
}

/// @nodoc
abstract class _$$GetDownloadedVideoIdImplCopyWith<$Res> {
  factory _$$GetDownloadedVideoIdImplCopyWith(_$GetDownloadedVideoIdImpl value,
          $Res Function(_$GetDownloadedVideoIdImpl) then) =
      __$$GetDownloadedVideoIdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDownloadedVideoIdImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$GetDownloadedVideoIdImpl>
    implements _$$GetDownloadedVideoIdImplCopyWith<$Res> {
  __$$GetDownloadedVideoIdImplCopyWithImpl(_$GetDownloadedVideoIdImpl _value,
      $Res Function(_$GetDownloadedVideoIdImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDownloadedVideoIdImpl implements GetDownloadedVideoId {
  const _$GetDownloadedVideoIdImpl();

  @override
  String toString() {
    return 'VideoPlayerEvent.getDownloadedVideoId()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDownloadedVideoIdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playNext,
    required TResult Function() playPrevious,
    required TResult Function() getDownloadedVideoId,
    required TResult Function(String videoId) downloadAndEncrypt,
    required TResult Function(String videoId) getDecreptedData,
  }) {
    return getDownloadedVideoId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playNext,
    TResult? Function()? playPrevious,
    TResult? Function()? getDownloadedVideoId,
    TResult? Function(String videoId)? downloadAndEncrypt,
    TResult? Function(String videoId)? getDecreptedData,
  }) {
    return getDownloadedVideoId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playNext,
    TResult Function()? playPrevious,
    TResult Function()? getDownloadedVideoId,
    TResult Function(String videoId)? downloadAndEncrypt,
    TResult Function(String videoId)? getDecreptedData,
    required TResult orElse(),
  }) {
    if (getDownloadedVideoId != null) {
      return getDownloadedVideoId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayNext value) playNext,
    required TResult Function(PlayPrevious value) playPrevious,
    required TResult Function(GetDownloadedVideoId value) getDownloadedVideoId,
    required TResult Function(DownloadAndEncrypt value) downloadAndEncrypt,
    required TResult Function(GetDecreptedData value) getDecreptedData,
  }) {
    return getDownloadedVideoId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayNext value)? playNext,
    TResult? Function(PlayPrevious value)? playPrevious,
    TResult? Function(GetDownloadedVideoId value)? getDownloadedVideoId,
    TResult? Function(DownloadAndEncrypt value)? downloadAndEncrypt,
    TResult? Function(GetDecreptedData value)? getDecreptedData,
  }) {
    return getDownloadedVideoId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayNext value)? playNext,
    TResult Function(PlayPrevious value)? playPrevious,
    TResult Function(GetDownloadedVideoId value)? getDownloadedVideoId,
    TResult Function(DownloadAndEncrypt value)? downloadAndEncrypt,
    TResult Function(GetDecreptedData value)? getDecreptedData,
    required TResult orElse(),
  }) {
    if (getDownloadedVideoId != null) {
      return getDownloadedVideoId(this);
    }
    return orElse();
  }
}

abstract class GetDownloadedVideoId implements VideoPlayerEvent {
  const factory GetDownloadedVideoId() = _$GetDownloadedVideoIdImpl;
}

/// @nodoc
abstract class _$$DownloadAndEncryptImplCopyWith<$Res> {
  factory _$$DownloadAndEncryptImplCopyWith(_$DownloadAndEncryptImpl value,
          $Res Function(_$DownloadAndEncryptImpl) then) =
      __$$DownloadAndEncryptImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class __$$DownloadAndEncryptImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$DownloadAndEncryptImpl>
    implements _$$DownloadAndEncryptImplCopyWith<$Res> {
  __$$DownloadAndEncryptImplCopyWithImpl(_$DownloadAndEncryptImpl _value,
      $Res Function(_$DownloadAndEncryptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_$DownloadAndEncryptImpl(
      null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownloadAndEncryptImpl implements DownloadAndEncrypt {
  const _$DownloadAndEncryptImpl(this.videoId);

  @override
  final String videoId;

  @override
  String toString() {
    return 'VideoPlayerEvent.downloadAndEncrypt(videoId: $videoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadAndEncryptImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadAndEncryptImplCopyWith<_$DownloadAndEncryptImpl> get copyWith =>
      __$$DownloadAndEncryptImplCopyWithImpl<_$DownloadAndEncryptImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playNext,
    required TResult Function() playPrevious,
    required TResult Function() getDownloadedVideoId,
    required TResult Function(String videoId) downloadAndEncrypt,
    required TResult Function(String videoId) getDecreptedData,
  }) {
    return downloadAndEncrypt(videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playNext,
    TResult? Function()? playPrevious,
    TResult? Function()? getDownloadedVideoId,
    TResult? Function(String videoId)? downloadAndEncrypt,
    TResult? Function(String videoId)? getDecreptedData,
  }) {
    return downloadAndEncrypt?.call(videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playNext,
    TResult Function()? playPrevious,
    TResult Function()? getDownloadedVideoId,
    TResult Function(String videoId)? downloadAndEncrypt,
    TResult Function(String videoId)? getDecreptedData,
    required TResult orElse(),
  }) {
    if (downloadAndEncrypt != null) {
      return downloadAndEncrypt(videoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayNext value) playNext,
    required TResult Function(PlayPrevious value) playPrevious,
    required TResult Function(GetDownloadedVideoId value) getDownloadedVideoId,
    required TResult Function(DownloadAndEncrypt value) downloadAndEncrypt,
    required TResult Function(GetDecreptedData value) getDecreptedData,
  }) {
    return downloadAndEncrypt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayNext value)? playNext,
    TResult? Function(PlayPrevious value)? playPrevious,
    TResult? Function(GetDownloadedVideoId value)? getDownloadedVideoId,
    TResult? Function(DownloadAndEncrypt value)? downloadAndEncrypt,
    TResult? Function(GetDecreptedData value)? getDecreptedData,
  }) {
    return downloadAndEncrypt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayNext value)? playNext,
    TResult Function(PlayPrevious value)? playPrevious,
    TResult Function(GetDownloadedVideoId value)? getDownloadedVideoId,
    TResult Function(DownloadAndEncrypt value)? downloadAndEncrypt,
    TResult Function(GetDecreptedData value)? getDecreptedData,
    required TResult orElse(),
  }) {
    if (downloadAndEncrypt != null) {
      return downloadAndEncrypt(this);
    }
    return orElse();
  }
}

abstract class DownloadAndEncrypt implements VideoPlayerEvent {
  const factory DownloadAndEncrypt(final String videoId) =
      _$DownloadAndEncryptImpl;

  String get videoId;
  @JsonKey(ignore: true)
  _$$DownloadAndEncryptImplCopyWith<_$DownloadAndEncryptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDecreptedDataImplCopyWith<$Res> {
  factory _$$GetDecreptedDataImplCopyWith(_$GetDecreptedDataImpl value,
          $Res Function(_$GetDecreptedDataImpl) then) =
      __$$GetDecreptedDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class __$$GetDecreptedDataImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$GetDecreptedDataImpl>
    implements _$$GetDecreptedDataImplCopyWith<$Res> {
  __$$GetDecreptedDataImplCopyWithImpl(_$GetDecreptedDataImpl _value,
      $Res Function(_$GetDecreptedDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_$GetDecreptedDataImpl(
      null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDecreptedDataImpl implements GetDecreptedData {
  const _$GetDecreptedDataImpl(this.videoId);

  @override
  final String videoId;

  @override
  String toString() {
    return 'VideoPlayerEvent.getDecreptedData(videoId: $videoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDecreptedDataImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDecreptedDataImplCopyWith<_$GetDecreptedDataImpl> get copyWith =>
      __$$GetDecreptedDataImplCopyWithImpl<_$GetDecreptedDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() playNext,
    required TResult Function() playPrevious,
    required TResult Function() getDownloadedVideoId,
    required TResult Function(String videoId) downloadAndEncrypt,
    required TResult Function(String videoId) getDecreptedData,
  }) {
    return getDecreptedData(videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? playNext,
    TResult? Function()? playPrevious,
    TResult? Function()? getDownloadedVideoId,
    TResult? Function(String videoId)? downloadAndEncrypt,
    TResult? Function(String videoId)? getDecreptedData,
  }) {
    return getDecreptedData?.call(videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? playNext,
    TResult Function()? playPrevious,
    TResult Function()? getDownloadedVideoId,
    TResult Function(String videoId)? downloadAndEncrypt,
    TResult Function(String videoId)? getDecreptedData,
    required TResult orElse(),
  }) {
    if (getDecreptedData != null) {
      return getDecreptedData(videoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayNext value) playNext,
    required TResult Function(PlayPrevious value) playPrevious,
    required TResult Function(GetDownloadedVideoId value) getDownloadedVideoId,
    required TResult Function(DownloadAndEncrypt value) downloadAndEncrypt,
    required TResult Function(GetDecreptedData value) getDecreptedData,
  }) {
    return getDecreptedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayNext value)? playNext,
    TResult? Function(PlayPrevious value)? playPrevious,
    TResult? Function(GetDownloadedVideoId value)? getDownloadedVideoId,
    TResult? Function(DownloadAndEncrypt value)? downloadAndEncrypt,
    TResult? Function(GetDecreptedData value)? getDecreptedData,
  }) {
    return getDecreptedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayNext value)? playNext,
    TResult Function(PlayPrevious value)? playPrevious,
    TResult Function(GetDownloadedVideoId value)? getDownloadedVideoId,
    TResult Function(DownloadAndEncrypt value)? downloadAndEncrypt,
    TResult Function(GetDecreptedData value)? getDecreptedData,
    required TResult orElse(),
  }) {
    if (getDecreptedData != null) {
      return getDecreptedData(this);
    }
    return orElse();
  }
}

abstract class GetDecreptedData implements VideoPlayerEvent {
  const factory GetDecreptedData(final String videoId) = _$GetDecreptedDataImpl;

  String get videoId;
  @JsonKey(ignore: true)
  _$$GetDecreptedDataImplCopyWith<_$GetDecreptedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoPlayerState {
  List<String> get videoId => throw _privateConstructorUsedError;
  List<String> get downloadVideos => throw _privateConstructorUsedError;
  int get playIndex => throw _privateConstructorUsedError;
  bool get isVideoDownloading => throw _privateConstructorUsedError;
  Uint8List? get decryptedVideo => throw _privateConstructorUsedError;
  BetterPlayerController? get videoController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoPlayerStateCopyWith<VideoPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerStateCopyWith<$Res> {
  factory $VideoPlayerStateCopyWith(
          VideoPlayerState value, $Res Function(VideoPlayerState) then) =
      _$VideoPlayerStateCopyWithImpl<$Res, VideoPlayerState>;
  @useResult
  $Res call(
      {List<String> videoId,
      List<String> downloadVideos,
      int playIndex,
      bool isVideoDownloading,
      Uint8List? decryptedVideo,
      BetterPlayerController? videoController});
}

/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res, $Val extends VideoPlayerState>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? downloadVideos = null,
    Object? playIndex = null,
    Object? isVideoDownloading = null,
    Object? decryptedVideo = freezed,
    Object? videoController = freezed,
  }) {
    return _then(_value.copyWith(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      downloadVideos: null == downloadVideos
          ? _value.downloadVideos
          : downloadVideos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      playIndex: null == playIndex
          ? _value.playIndex
          : playIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isVideoDownloading: null == isVideoDownloading
          ? _value.isVideoDownloading
          : isVideoDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
      decryptedVideo: freezed == decryptedVideo
          ? _value.decryptedVideo
          : decryptedVideo // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      videoController: freezed == videoController
          ? _value.videoController
          : videoController // ignore: cast_nullable_to_non_nullable
              as BetterPlayerController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoPlayerStateImplCopyWith<$Res>
    implements $VideoPlayerStateCopyWith<$Res> {
  factory _$$VideoPlayerStateImplCopyWith(_$VideoPlayerStateImpl value,
          $Res Function(_$VideoPlayerStateImpl) then) =
      __$$VideoPlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> videoId,
      List<String> downloadVideos,
      int playIndex,
      bool isVideoDownloading,
      Uint8List? decryptedVideo,
      BetterPlayerController? videoController});
}

/// @nodoc
class __$$VideoPlayerStateImplCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerStateImpl>
    implements _$$VideoPlayerStateImplCopyWith<$Res> {
  __$$VideoPlayerStateImplCopyWithImpl(_$VideoPlayerStateImpl _value,
      $Res Function(_$VideoPlayerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? downloadVideos = null,
    Object? playIndex = null,
    Object? isVideoDownloading = null,
    Object? decryptedVideo = freezed,
    Object? videoController = freezed,
  }) {
    return _then(_$VideoPlayerStateImpl(
      videoId: null == videoId
          ? _value._videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      downloadVideos: null == downloadVideos
          ? _value._downloadVideos
          : downloadVideos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      playIndex: null == playIndex
          ? _value.playIndex
          : playIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isVideoDownloading: null == isVideoDownloading
          ? _value.isVideoDownloading
          : isVideoDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
      decryptedVideo: freezed == decryptedVideo
          ? _value.decryptedVideo
          : decryptedVideo // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      videoController: freezed == videoController
          ? _value.videoController
          : videoController // ignore: cast_nullable_to_non_nullable
              as BetterPlayerController?,
    ));
  }
}

/// @nodoc

class _$VideoPlayerStateImpl implements _VideoPlayerState {
  const _$VideoPlayerStateImpl(
      {required final List<String> videoId,
      required final List<String> downloadVideos,
      required this.playIndex,
      required this.isVideoDownloading,
      required this.decryptedVideo,
      required this.videoController})
      : _videoId = videoId,
        _downloadVideos = downloadVideos;

  final List<String> _videoId;
  @override
  List<String> get videoId {
    if (_videoId is EqualUnmodifiableListView) return _videoId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoId);
  }

  final List<String> _downloadVideos;
  @override
  List<String> get downloadVideos {
    if (_downloadVideos is EqualUnmodifiableListView) return _downloadVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloadVideos);
  }

  @override
  final int playIndex;
  @override
  final bool isVideoDownloading;
  @override
  final Uint8List? decryptedVideo;
  @override
  final BetterPlayerController? videoController;

  @override
  String toString() {
    return 'VideoPlayerState(videoId: $videoId, downloadVideos: $downloadVideos, playIndex: $playIndex, isVideoDownloading: $isVideoDownloading, decryptedVideo: $decryptedVideo, videoController: $videoController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerStateImpl &&
            const DeepCollectionEquality().equals(other._videoId, _videoId) &&
            const DeepCollectionEquality()
                .equals(other._downloadVideos, _downloadVideos) &&
            (identical(other.playIndex, playIndex) ||
                other.playIndex == playIndex) &&
            (identical(other.isVideoDownloading, isVideoDownloading) ||
                other.isVideoDownloading == isVideoDownloading) &&
            const DeepCollectionEquality()
                .equals(other.decryptedVideo, decryptedVideo) &&
            (identical(other.videoController, videoController) ||
                other.videoController == videoController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_videoId),
      const DeepCollectionEquality().hash(_downloadVideos),
      playIndex,
      isVideoDownloading,
      const DeepCollectionEquality().hash(decryptedVideo),
      videoController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPlayerStateImplCopyWith<_$VideoPlayerStateImpl> get copyWith =>
      __$$VideoPlayerStateImplCopyWithImpl<_$VideoPlayerStateImpl>(
          this, _$identity);
}

abstract class _VideoPlayerState implements VideoPlayerState {
  const factory _VideoPlayerState(
          {required final List<String> videoId,
          required final List<String> downloadVideos,
          required final int playIndex,
          required final bool isVideoDownloading,
          required final Uint8List? decryptedVideo,
          required final BetterPlayerController? videoController}) =
      _$VideoPlayerStateImpl;

  @override
  List<String> get videoId;
  @override
  List<String> get downloadVideos;
  @override
  int get playIndex;
  @override
  bool get isVideoDownloading;
  @override
  Uint8List? get decryptedVideo;
  @override
  BetterPlayerController? get videoController;
  @override
  @JsonKey(ignore: true)
  _$$VideoPlayerStateImplCopyWith<_$VideoPlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
