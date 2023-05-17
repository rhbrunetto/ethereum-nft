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
    case 'noPrice':
      return NoPriceException.fromJson(json);
    case 'retrieveAsset':
      return RetrieveAssetException.fromJson(json);

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
    required TResult Function() noPrice,
    required TResult Function() retrieveAsset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidAbi,
    TResult? Function()? noPrice,
    TResult? Function()? retrieveAsset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidAbi,
    TResult Function()? noPrice,
    TResult Function()? retrieveAsset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidAbiException value) invalidAbi,
    required TResult Function(NoPriceException value) noPrice,
    required TResult Function(RetrieveAssetException value) retrieveAsset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidAbiException value)? invalidAbi,
    TResult? Function(NoPriceException value)? noPrice,
    TResult? Function(RetrieveAssetException value)? retrieveAsset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidAbiException value)? invalidAbi,
    TResult Function(NoPriceException value)? noPrice,
    TResult Function(RetrieveAssetException value)? retrieveAsset,
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
    required TResult Function() noPrice,
    required TResult Function() retrieveAsset,
  }) {
    return invalidAbi();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidAbi,
    TResult? Function()? noPrice,
    TResult? Function()? retrieveAsset,
  }) {
    return invalidAbi?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidAbi,
    TResult Function()? noPrice,
    TResult Function()? retrieveAsset,
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
    required TResult Function(NoPriceException value) noPrice,
    required TResult Function(RetrieveAssetException value) retrieveAsset,
  }) {
    return invalidAbi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidAbiException value)? invalidAbi,
    TResult? Function(NoPriceException value)? noPrice,
    TResult? Function(RetrieveAssetException value)? retrieveAsset,
  }) {
    return invalidAbi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidAbiException value)? invalidAbi,
    TResult Function(NoPriceException value)? noPrice,
    TResult Function(RetrieveAssetException value)? retrieveAsset,
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
abstract class _$$NoPriceExceptionCopyWith<$Res> {
  factory _$$NoPriceExceptionCopyWith(
          _$NoPriceException value, $Res Function(_$NoPriceException) then) =
      __$$NoPriceExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoPriceExceptionCopyWithImpl<$Res>
    extends _$MintNftExceptionCopyWithImpl<$Res, _$NoPriceException>
    implements _$$NoPriceExceptionCopyWith<$Res> {
  __$$NoPriceExceptionCopyWithImpl(
      _$NoPriceException _value, $Res Function(_$NoPriceException) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NoPriceException implements NoPriceException {
  const _$NoPriceException({final String? $type}) : $type = $type ?? 'noPrice';

  factory _$NoPriceException.fromJson(Map<String, dynamic> json) =>
      _$$NoPriceExceptionFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MintNftException.noPrice()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoPriceException);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidAbi,
    required TResult Function() noPrice,
    required TResult Function() retrieveAsset,
  }) {
    return noPrice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidAbi,
    TResult? Function()? noPrice,
    TResult? Function()? retrieveAsset,
  }) {
    return noPrice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidAbi,
    TResult Function()? noPrice,
    TResult Function()? retrieveAsset,
    required TResult orElse(),
  }) {
    if (noPrice != null) {
      return noPrice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidAbiException value) invalidAbi,
    required TResult Function(NoPriceException value) noPrice,
    required TResult Function(RetrieveAssetException value) retrieveAsset,
  }) {
    return noPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidAbiException value)? invalidAbi,
    TResult? Function(NoPriceException value)? noPrice,
    TResult? Function(RetrieveAssetException value)? retrieveAsset,
  }) {
    return noPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidAbiException value)? invalidAbi,
    TResult Function(NoPriceException value)? noPrice,
    TResult Function(RetrieveAssetException value)? retrieveAsset,
    required TResult orElse(),
  }) {
    if (noPrice != null) {
      return noPrice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoPriceExceptionToJson(
      this,
    );
  }
}

abstract class NoPriceException implements MintNftException {
  const factory NoPriceException() = _$NoPriceException;

  factory NoPriceException.fromJson(Map<String, dynamic> json) =
      _$NoPriceException.fromJson;
}

/// @nodoc
abstract class _$$RetrieveAssetExceptionCopyWith<$Res> {
  factory _$$RetrieveAssetExceptionCopyWith(_$RetrieveAssetException value,
          $Res Function(_$RetrieveAssetException) then) =
      __$$RetrieveAssetExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetrieveAssetExceptionCopyWithImpl<$Res>
    extends _$MintNftExceptionCopyWithImpl<$Res, _$RetrieveAssetException>
    implements _$$RetrieveAssetExceptionCopyWith<$Res> {
  __$$RetrieveAssetExceptionCopyWithImpl(_$RetrieveAssetException _value,
      $Res Function(_$RetrieveAssetException) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$RetrieveAssetException implements RetrieveAssetException {
  const _$RetrieveAssetException({final String? $type})
      : $type = $type ?? 'retrieveAsset';

  factory _$RetrieveAssetException.fromJson(Map<String, dynamic> json) =>
      _$$RetrieveAssetExceptionFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MintNftException.retrieveAsset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RetrieveAssetException);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidAbi,
    required TResult Function() noPrice,
    required TResult Function() retrieveAsset,
  }) {
    return retrieveAsset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidAbi,
    TResult? Function()? noPrice,
    TResult? Function()? retrieveAsset,
  }) {
    return retrieveAsset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidAbi,
    TResult Function()? noPrice,
    TResult Function()? retrieveAsset,
    required TResult orElse(),
  }) {
    if (retrieveAsset != null) {
      return retrieveAsset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidAbiException value) invalidAbi,
    required TResult Function(NoPriceException value) noPrice,
    required TResult Function(RetrieveAssetException value) retrieveAsset,
  }) {
    return retrieveAsset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidAbiException value)? invalidAbi,
    TResult? Function(NoPriceException value)? noPrice,
    TResult? Function(RetrieveAssetException value)? retrieveAsset,
  }) {
    return retrieveAsset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidAbiException value)? invalidAbi,
    TResult Function(NoPriceException value)? noPrice,
    TResult Function(RetrieveAssetException value)? retrieveAsset,
    required TResult orElse(),
  }) {
    if (retrieveAsset != null) {
      return retrieveAsset(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RetrieveAssetExceptionToJson(
      this,
    );
  }
}

abstract class RetrieveAssetException implements MintNftException {
  const factory RetrieveAssetException() = _$RetrieveAssetException;

  factory RetrieveAssetException.fromJson(Map<String, dynamic> json) =
      _$RetrieveAssetException.fromJson;
}
