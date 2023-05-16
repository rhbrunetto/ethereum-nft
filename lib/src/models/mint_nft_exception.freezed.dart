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

/// @nodoc
mixin _$MintNftException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidAbi,
    required TResult Function() noPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidAbi,
    TResult? Function()? noPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidAbi,
    TResult Function()? noPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidAbiException value) invalidAbi,
    required TResult Function(NoPriceException value) noPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidAbiException value)? invalidAbi,
    TResult? Function(NoPriceException value)? noPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidAbiException value)? invalidAbi,
    TResult Function(NoPriceException value)? noPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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

class _$InvalidAbiException implements InvalidAbiException {
  const _$InvalidAbiException();

  @override
  String toString() {
    return 'MintNftException.invalidAbi()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidAbiException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidAbi,
    required TResult Function() noPrice,
  }) {
    return invalidAbi();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidAbi,
    TResult? Function()? noPrice,
  }) {
    return invalidAbi?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidAbi,
    TResult Function()? noPrice,
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
  }) {
    return invalidAbi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidAbiException value)? invalidAbi,
    TResult? Function(NoPriceException value)? noPrice,
  }) {
    return invalidAbi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidAbiException value)? invalidAbi,
    TResult Function(NoPriceException value)? noPrice,
    required TResult orElse(),
  }) {
    if (invalidAbi != null) {
      return invalidAbi(this);
    }
    return orElse();
  }
}

abstract class InvalidAbiException implements MintNftException {
  const factory InvalidAbiException() = _$InvalidAbiException;
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

class _$NoPriceException implements NoPriceException {
  const _$NoPriceException();

  @override
  String toString() {
    return 'MintNftException.noPrice()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoPriceException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidAbi,
    required TResult Function() noPrice,
  }) {
    return noPrice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidAbi,
    TResult? Function()? noPrice,
  }) {
    return noPrice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidAbi,
    TResult Function()? noPrice,
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
  }) {
    return noPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidAbiException value)? invalidAbi,
    TResult? Function(NoPriceException value)? noPrice,
  }) {
    return noPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidAbiException value)? invalidAbi,
    TResult Function(NoPriceException value)? noPrice,
    required TResult orElse(),
  }) {
    if (noPrice != null) {
      return noPrice(this);
    }
    return orElse();
  }
}

abstract class NoPriceException implements MintNftException {
  const factory NoPriceException() = _$NoPriceException;
}
