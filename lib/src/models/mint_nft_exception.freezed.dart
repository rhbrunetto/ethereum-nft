// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mint_nft_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MintNftException _$MintNftExceptionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'invalidAbi':
      return InvalidAbiException.fromJson(json);
    case 'invalidAsset':
      return InvalidAssetException.fromJson(json);
    case 'countFailed':
      return CountFailedException.fromJson(json);
    case 'mintFailed':
      return MintFailedException.fromJson(json);
    case 'inconsistentCount':
      return InconsistentCountException.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MintNftException',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MintNftException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidAbi,
    required TResult Function() invalidAsset,
    required TResult Function() countFailed,
    required TResult Function() mintFailed,
    required TResult Function() inconsistentCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidAbi,
    TResult? Function()? invalidAsset,
    TResult? Function()? countFailed,
    TResult? Function()? mintFailed,
    TResult? Function()? inconsistentCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidAbi,
    TResult Function()? invalidAsset,
    TResult Function()? countFailed,
    TResult Function()? mintFailed,
    TResult Function()? inconsistentCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidAbiException value) invalidAbi,
    required TResult Function(InvalidAssetException value) invalidAsset,
    required TResult Function(CountFailedException value) countFailed,
    required TResult Function(MintFailedException value) mintFailed,
    required TResult Function(InconsistentCountException value)
        inconsistentCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidAbiException value)? invalidAbi,
    TResult? Function(InvalidAssetException value)? invalidAsset,
    TResult? Function(CountFailedException value)? countFailed,
    TResult? Function(MintFailedException value)? mintFailed,
    TResult? Function(InconsistentCountException value)? inconsistentCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidAbiException value)? invalidAbi,
    TResult Function(InvalidAssetException value)? invalidAsset,
    TResult Function(CountFailedException value)? countFailed,
    TResult Function(MintFailedException value)? mintFailed,
    TResult Function(InconsistentCountException value)? inconsistentCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MintNftExceptionCopyWith<$Res> {
  factory $MintNftExceptionCopyWith(
          MintNftException value, $Res Function(MintNftException) then) =
      _$MintNftExceptionCopyWithImpl<$Res, MintNftException>;
}

/// @nodoc
class _$MintNftExceptionCopyWithImpl<$Res, $Val extends MintNftException>
    implements $MintNftExceptionCopyWith<$Res> {
  _$MintNftExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvalidAbiExceptionCopyWith<$Res> {
  factory _$$InvalidAbiExceptionCopyWith(_$InvalidAbiException value,
          $Res Function(_$InvalidAbiException) then) =
      __$$InvalidAbiExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidAbiExceptionCopyWithImpl<$Res>
    extends _$MintNftExceptionCopyWithImpl<$Res, _$InvalidAbiException>
    implements _$$InvalidAbiExceptionCopyWith<$Res> {
  __$$InvalidAbiExceptionCopyWithImpl(
      _$InvalidAbiException _value, $Res Function(_$InvalidAbiException) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$InvalidAbiException implements InvalidAbiException {
  const _$InvalidAbiException({final String? $type})
      : $type = $type ?? 'invalidAbi';

  factory _$InvalidAbiException.fromJson(Map<String, dynamic> json) =>
      _$$InvalidAbiExceptionFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MintNftException.invalidAbi()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidAbiException);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidAbi,
    required TResult Function() invalidAsset,
    required TResult Function() countFailed,
    required TResult Function() mintFailed,
    required TResult Function() inconsistentCount,
  }) {
    return invalidAbi();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidAbi,
    TResult? Function()? invalidAsset,
    TResult? Function()? countFailed,
    TResult? Function()? mintFailed,
    TResult? Function()? inconsistentCount,
  }) {
    return invalidAbi?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidAbi,
    TResult Function()? invalidAsset,
    TResult Function()? countFailed,
    TResult Function()? mintFailed,
    TResult Function()? inconsistentCount,
    required TResult orElse(),
  }) {
    if (invalidAbi != null) {
      return invalidAbi();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidAbiException value) invalidAbi,
    required TResult Function(InvalidAssetException value) invalidAsset,
    required TResult Function(CountFailedException value) countFailed,
    required TResult Function(MintFailedException value) mintFailed,
    required TResult Function(InconsistentCountException value)
        inconsistentCount,
  }) {
    return invalidAbi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidAbiException value)? invalidAbi,
    TResult? Function(InvalidAssetException value)? invalidAsset,
    TResult? Function(CountFailedException value)? countFailed,
    TResult? Function(MintFailedException value)? mintFailed,
    TResult? Function(InconsistentCountException value)? inconsistentCount,
  }) {
    return invalidAbi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidAbiException value)? invalidAbi,
    TResult Function(InvalidAssetException value)? invalidAsset,
    TResult Function(CountFailedException value)? countFailed,
    TResult Function(MintFailedException value)? mintFailed,
    TResult Function(InconsistentCountException value)? inconsistentCount,
    required TResult orElse(),
  }) {
    if (invalidAbi != null) {
      return invalidAbi(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InvalidAbiExceptionToJson(
      this,
    );
  }
}

abstract class InvalidAbiException implements MintNftException {
  const factory InvalidAbiException() = _$InvalidAbiException;

  factory InvalidAbiException.fromJson(Map<String, dynamic> json) =
      _$InvalidAbiException.fromJson;
}

/// @nodoc
abstract class _$$InvalidAssetExceptionCopyWith<$Res> {
  factory _$$InvalidAssetExceptionCopyWith(_$InvalidAssetException value,
          $Res Function(_$InvalidAssetException) then) =
      __$$InvalidAssetExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidAssetExceptionCopyWithImpl<$Res>
    extends _$MintNftExceptionCopyWithImpl<$Res, _$InvalidAssetException>
    implements _$$InvalidAssetExceptionCopyWith<$Res> {
  __$$InvalidAssetExceptionCopyWithImpl(_$InvalidAssetException _value,
      $Res Function(_$InvalidAssetException) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$InvalidAssetException implements InvalidAssetException {
  const _$InvalidAssetException({final String? $type})
      : $type = $type ?? 'invalidAsset';

  factory _$InvalidAssetException.fromJson(Map<String, dynamic> json) =>
      _$$InvalidAssetExceptionFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MintNftException.invalidAsset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidAssetException);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidAbi,
    required TResult Function() invalidAsset,
    required TResult Function() countFailed,
    required TResult Function() mintFailed,
    required TResult Function() inconsistentCount,
  }) {
    return invalidAsset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidAbi,
    TResult? Function()? invalidAsset,
    TResult? Function()? countFailed,
    TResult? Function()? mintFailed,
    TResult? Function()? inconsistentCount,
  }) {
    return invalidAsset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidAbi,
    TResult Function()? invalidAsset,
    TResult Function()? countFailed,
    TResult Function()? mintFailed,
    TResult Function()? inconsistentCount,
    required TResult orElse(),
  }) {
    if (invalidAsset != null) {
      return invalidAsset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidAbiException value) invalidAbi,
    required TResult Function(InvalidAssetException value) invalidAsset,
    required TResult Function(CountFailedException value) countFailed,
    required TResult Function(MintFailedException value) mintFailed,
    required TResult Function(InconsistentCountException value)
        inconsistentCount,
  }) {
    return invalidAsset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidAbiException value)? invalidAbi,
    TResult? Function(InvalidAssetException value)? invalidAsset,
    TResult? Function(CountFailedException value)? countFailed,
    TResult? Function(MintFailedException value)? mintFailed,
    TResult? Function(InconsistentCountException value)? inconsistentCount,
  }) {
    return invalidAsset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidAbiException value)? invalidAbi,
    TResult Function(InvalidAssetException value)? invalidAsset,
    TResult Function(CountFailedException value)? countFailed,
    TResult Function(MintFailedException value)? mintFailed,
    TResult Function(InconsistentCountException value)? inconsistentCount,
    required TResult orElse(),
  }) {
    if (invalidAsset != null) {
      return invalidAsset(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InvalidAssetExceptionToJson(
      this,
    );
  }
}

abstract class InvalidAssetException implements MintNftException {
  const factory InvalidAssetException() = _$InvalidAssetException;

  factory InvalidAssetException.fromJson(Map<String, dynamic> json) =
      _$InvalidAssetException.fromJson;
}

/// @nodoc
abstract class _$$CountFailedExceptionCopyWith<$Res> {
  factory _$$CountFailedExceptionCopyWith(_$CountFailedException value,
          $Res Function(_$CountFailedException) then) =
      __$$CountFailedExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountFailedExceptionCopyWithImpl<$Res>
    extends _$MintNftExceptionCopyWithImpl<$Res, _$CountFailedException>
    implements _$$CountFailedExceptionCopyWith<$Res> {
  __$$CountFailedExceptionCopyWithImpl(_$CountFailedException _value,
      $Res Function(_$CountFailedException) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CountFailedException implements CountFailedException {
  const _$CountFailedException({final String? $type})
      : $type = $type ?? 'countFailed';

  factory _$CountFailedException.fromJson(Map<String, dynamic> json) =>
      _$$CountFailedExceptionFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MintNftException.countFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountFailedException);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidAbi,
    required TResult Function() invalidAsset,
    required TResult Function() countFailed,
    required TResult Function() mintFailed,
    required TResult Function() inconsistentCount,
  }) {
    return countFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidAbi,
    TResult? Function()? invalidAsset,
    TResult? Function()? countFailed,
    TResult? Function()? mintFailed,
    TResult? Function()? inconsistentCount,
  }) {
    return countFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidAbi,
    TResult Function()? invalidAsset,
    TResult Function()? countFailed,
    TResult Function()? mintFailed,
    TResult Function()? inconsistentCount,
    required TResult orElse(),
  }) {
    if (countFailed != null) {
      return countFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidAbiException value) invalidAbi,
    required TResult Function(InvalidAssetException value) invalidAsset,
    required TResult Function(CountFailedException value) countFailed,
    required TResult Function(MintFailedException value) mintFailed,
    required TResult Function(InconsistentCountException value)
        inconsistentCount,
  }) {
    return countFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidAbiException value)? invalidAbi,
    TResult? Function(InvalidAssetException value)? invalidAsset,
    TResult? Function(CountFailedException value)? countFailed,
    TResult? Function(MintFailedException value)? mintFailed,
    TResult? Function(InconsistentCountException value)? inconsistentCount,
  }) {
    return countFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidAbiException value)? invalidAbi,
    TResult Function(InvalidAssetException value)? invalidAsset,
    TResult Function(CountFailedException value)? countFailed,
    TResult Function(MintFailedException value)? mintFailed,
    TResult Function(InconsistentCountException value)? inconsistentCount,
    required TResult orElse(),
  }) {
    if (countFailed != null) {
      return countFailed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CountFailedExceptionToJson(
      this,
    );
  }
}

abstract class CountFailedException implements MintNftException {
  const factory CountFailedException() = _$CountFailedException;

  factory CountFailedException.fromJson(Map<String, dynamic> json) =
      _$CountFailedException.fromJson;
}

/// @nodoc
abstract class _$$MintFailedExceptionCopyWith<$Res> {
  factory _$$MintFailedExceptionCopyWith(_$MintFailedException value,
          $Res Function(_$MintFailedException) then) =
      __$$MintFailedExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MintFailedExceptionCopyWithImpl<$Res>
    extends _$MintNftExceptionCopyWithImpl<$Res, _$MintFailedException>
    implements _$$MintFailedExceptionCopyWith<$Res> {
  __$$MintFailedExceptionCopyWithImpl(
      _$MintFailedException _value, $Res Function(_$MintFailedException) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$MintFailedException implements MintFailedException {
  const _$MintFailedException({final String? $type})
      : $type = $type ?? 'mintFailed';

  factory _$MintFailedException.fromJson(Map<String, dynamic> json) =>
      _$$MintFailedExceptionFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MintNftException.mintFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MintFailedException);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidAbi,
    required TResult Function() invalidAsset,
    required TResult Function() countFailed,
    required TResult Function() mintFailed,
    required TResult Function() inconsistentCount,
  }) {
    return mintFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidAbi,
    TResult? Function()? invalidAsset,
    TResult? Function()? countFailed,
    TResult? Function()? mintFailed,
    TResult? Function()? inconsistentCount,
  }) {
    return mintFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidAbi,
    TResult Function()? invalidAsset,
    TResult Function()? countFailed,
    TResult Function()? mintFailed,
    TResult Function()? inconsistentCount,
    required TResult orElse(),
  }) {
    if (mintFailed != null) {
      return mintFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidAbiException value) invalidAbi,
    required TResult Function(InvalidAssetException value) invalidAsset,
    required TResult Function(CountFailedException value) countFailed,
    required TResult Function(MintFailedException value) mintFailed,
    required TResult Function(InconsistentCountException value)
        inconsistentCount,
  }) {
    return mintFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidAbiException value)? invalidAbi,
    TResult? Function(InvalidAssetException value)? invalidAsset,
    TResult? Function(CountFailedException value)? countFailed,
    TResult? Function(MintFailedException value)? mintFailed,
    TResult? Function(InconsistentCountException value)? inconsistentCount,
  }) {
    return mintFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidAbiException value)? invalidAbi,
    TResult Function(InvalidAssetException value)? invalidAsset,
    TResult Function(CountFailedException value)? countFailed,
    TResult Function(MintFailedException value)? mintFailed,
    TResult Function(InconsistentCountException value)? inconsistentCount,
    required TResult orElse(),
  }) {
    if (mintFailed != null) {
      return mintFailed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MintFailedExceptionToJson(
      this,
    );
  }
}

abstract class MintFailedException implements MintNftException {
  const factory MintFailedException() = _$MintFailedException;

  factory MintFailedException.fromJson(Map<String, dynamic> json) =
      _$MintFailedException.fromJson;
}

/// @nodoc
abstract class _$$InconsistentCountExceptionCopyWith<$Res> {
  factory _$$InconsistentCountExceptionCopyWith(
          _$InconsistentCountException value,
          $Res Function(_$InconsistentCountException) then) =
      __$$InconsistentCountExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InconsistentCountExceptionCopyWithImpl<$Res>
    extends _$MintNftExceptionCopyWithImpl<$Res, _$InconsistentCountException>
    implements _$$InconsistentCountExceptionCopyWith<$Res> {
  __$$InconsistentCountExceptionCopyWithImpl(
      _$InconsistentCountException _value,
      $Res Function(_$InconsistentCountException) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$InconsistentCountException implements InconsistentCountException {
  const _$InconsistentCountException({final String? $type})
      : $type = $type ?? 'inconsistentCount';

  factory _$InconsistentCountException.fromJson(Map<String, dynamic> json) =>
      _$$InconsistentCountExceptionFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MintNftException.inconsistentCount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InconsistentCountException);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidAbi,
    required TResult Function() invalidAsset,
    required TResult Function() countFailed,
    required TResult Function() mintFailed,
    required TResult Function() inconsistentCount,
  }) {
    return inconsistentCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidAbi,
    TResult? Function()? invalidAsset,
    TResult? Function()? countFailed,
    TResult? Function()? mintFailed,
    TResult? Function()? inconsistentCount,
  }) {
    return inconsistentCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidAbi,
    TResult Function()? invalidAsset,
    TResult Function()? countFailed,
    TResult Function()? mintFailed,
    TResult Function()? inconsistentCount,
    required TResult orElse(),
  }) {
    if (inconsistentCount != null) {
      return inconsistentCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidAbiException value) invalidAbi,
    required TResult Function(InvalidAssetException value) invalidAsset,
    required TResult Function(CountFailedException value) countFailed,
    required TResult Function(MintFailedException value) mintFailed,
    required TResult Function(InconsistentCountException value)
        inconsistentCount,
  }) {
    return inconsistentCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidAbiException value)? invalidAbi,
    TResult? Function(InvalidAssetException value)? invalidAsset,
    TResult? Function(CountFailedException value)? countFailed,
    TResult? Function(MintFailedException value)? mintFailed,
    TResult? Function(InconsistentCountException value)? inconsistentCount,
  }) {
    return inconsistentCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidAbiException value)? invalidAbi,
    TResult Function(InvalidAssetException value)? invalidAsset,
    TResult Function(CountFailedException value)? countFailed,
    TResult Function(MintFailedException value)? mintFailed,
    TResult Function(InconsistentCountException value)? inconsistentCount,
    required TResult orElse(),
  }) {
    if (inconsistentCount != null) {
      return inconsistentCount(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InconsistentCountExceptionToJson(
      this,
    );
  }
}

abstract class InconsistentCountException implements MintNftException {
  const factory InconsistentCountException() = _$InconsistentCountException;

  factory InconsistentCountException.fromJson(Map<String, dynamic> json) =
      _$InconsistentCountException.fromJson;
}
