// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mint_nft.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MintNftRequestDto _$MintNftRequestDtoFromJson(Map<String, dynamic> json) {
  return _MintNftRequiestDto.fromJson(json);
}

/// @nodoc
mixin _$MintNftRequestDto {
  String get identifier => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  ImageSetDto get imageSet => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MintNftRequestDtoCopyWith<MintNftRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MintNftRequestDtoCopyWith<$Res> {
  factory $MintNftRequestDtoCopyWith(
          MintNftRequestDto value, $Res Function(MintNftRequestDto) then) =
      _$MintNftRequestDtoCopyWithImpl<$Res, MintNftRequestDto>;
  @useResult
  $Res call(
      {String identifier,
      String title,
      ImageSetDto imageSet,
      String? description});

  $ImageSetDtoCopyWith<$Res> get imageSet;
}

/// @nodoc
class _$MintNftRequestDtoCopyWithImpl<$Res, $Val extends MintNftRequestDto>
    implements $MintNftRequestDtoCopyWith<$Res> {
  _$MintNftRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? title = null,
    Object? imageSet = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageSet: null == imageSet
          ? _value.imageSet
          : imageSet // ignore: cast_nullable_to_non_nullable
              as ImageSetDto,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageSetDtoCopyWith<$Res> get imageSet {
    return $ImageSetDtoCopyWith<$Res>(_value.imageSet, (value) {
      return _then(_value.copyWith(imageSet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MintNftRequiestDtoCopyWith<$Res>
    implements $MintNftRequestDtoCopyWith<$Res> {
  factory _$$_MintNftRequiestDtoCopyWith(_$_MintNftRequiestDto value,
          $Res Function(_$_MintNftRequiestDto) then) =
      __$$_MintNftRequiestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String identifier,
      String title,
      ImageSetDto imageSet,
      String? description});

  @override
  $ImageSetDtoCopyWith<$Res> get imageSet;
}

/// @nodoc
class __$$_MintNftRequiestDtoCopyWithImpl<$Res>
    extends _$MintNftRequestDtoCopyWithImpl<$Res, _$_MintNftRequiestDto>
    implements _$$_MintNftRequiestDtoCopyWith<$Res> {
  __$$_MintNftRequiestDtoCopyWithImpl(
      _$_MintNftRequiestDto _value, $Res Function(_$_MintNftRequiestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? title = null,
    Object? imageSet = null,
    Object? description = freezed,
  }) {
    return _then(_$_MintNftRequiestDto(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageSet: null == imageSet
          ? _value.imageSet
          : imageSet // ignore: cast_nullable_to_non_nullable
              as ImageSetDto,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MintNftRequiestDto implements _MintNftRequiestDto {
  const _$_MintNftRequiestDto(
      {required this.identifier,
      required this.title,
      required this.imageSet,
      this.description});

  factory _$_MintNftRequiestDto.fromJson(Map<String, dynamic> json) =>
      _$$_MintNftRequiestDtoFromJson(json);

  @override
  final String identifier;
  @override
  final String title;
  @override
  final ImageSetDto imageSet;
  @override
  final String? description;

  @override
  String toString() {
    return 'MintNftRequestDto(identifier: $identifier, title: $title, imageSet: $imageSet, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MintNftRequiestDto &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageSet, imageSet) ||
                other.imageSet == imageSet) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, identifier, title, imageSet, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MintNftRequiestDtoCopyWith<_$_MintNftRequiestDto> get copyWith =>
      __$$_MintNftRequiestDtoCopyWithImpl<_$_MintNftRequiestDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MintNftRequiestDtoToJson(
      this,
    );
  }
}

abstract class _MintNftRequiestDto implements MintNftRequestDto {
  const factory _MintNftRequiestDto(
      {required final String identifier,
      required final String title,
      required final ImageSetDto imageSet,
      final String? description}) = _$_MintNftRequiestDto;

  factory _MintNftRequiestDto.fromJson(Map<String, dynamic> json) =
      _$_MintNftRequiestDto.fromJson;

  @override
  String get identifier;
  @override
  String get title;
  @override
  ImageSetDto get imageSet;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_MintNftRequiestDtoCopyWith<_$_MintNftRequiestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageSetDto _$ImageSetDtoFromJson(Map<String, dynamic> json) {
  return _ImageSetDto.fromJson(json);
}

/// @nodoc
mixin _$ImageSetDto {
  Uri get firstNftImage => throw _privateConstructorUsedError;
  Uri get commonNftImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageSetDtoCopyWith<ImageSetDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSetDtoCopyWith<$Res> {
  factory $ImageSetDtoCopyWith(
          ImageSetDto value, $Res Function(ImageSetDto) then) =
      _$ImageSetDtoCopyWithImpl<$Res, ImageSetDto>;
  @useResult
  $Res call({Uri firstNftImage, Uri commonNftImage});
}

/// @nodoc
class _$ImageSetDtoCopyWithImpl<$Res, $Val extends ImageSetDto>
    implements $ImageSetDtoCopyWith<$Res> {
  _$ImageSetDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstNftImage = null,
    Object? commonNftImage = null,
  }) {
    return _then(_value.copyWith(
      firstNftImage: null == firstNftImage
          ? _value.firstNftImage
          : firstNftImage // ignore: cast_nullable_to_non_nullable
              as Uri,
      commonNftImage: null == commonNftImage
          ? _value.commonNftImage
          : commonNftImage // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageSetDtoCopyWith<$Res>
    implements $ImageSetDtoCopyWith<$Res> {
  factory _$$_ImageSetDtoCopyWith(
          _$_ImageSetDto value, $Res Function(_$_ImageSetDto) then) =
      __$$_ImageSetDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri firstNftImage, Uri commonNftImage});
}

/// @nodoc
class __$$_ImageSetDtoCopyWithImpl<$Res>
    extends _$ImageSetDtoCopyWithImpl<$Res, _$_ImageSetDto>
    implements _$$_ImageSetDtoCopyWith<$Res> {
  __$$_ImageSetDtoCopyWithImpl(
      _$_ImageSetDto _value, $Res Function(_$_ImageSetDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstNftImage = null,
    Object? commonNftImage = null,
  }) {
    return _then(_$_ImageSetDto(
      firstNftImage: null == firstNftImage
          ? _value.firstNftImage
          : firstNftImage // ignore: cast_nullable_to_non_nullable
              as Uri,
      commonNftImage: null == commonNftImage
          ? _value.commonNftImage
          : commonNftImage // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageSetDto implements _ImageSetDto {
  const _$_ImageSetDto(
      {required this.firstNftImage, required this.commonNftImage});

  factory _$_ImageSetDto.fromJson(Map<String, dynamic> json) =>
      _$$_ImageSetDtoFromJson(json);

  @override
  final Uri firstNftImage;
  @override
  final Uri commonNftImage;

  @override
  String toString() {
    return 'ImageSetDto(firstNftImage: $firstNftImage, commonNftImage: $commonNftImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageSetDto &&
            (identical(other.firstNftImage, firstNftImage) ||
                other.firstNftImage == firstNftImage) &&
            (identical(other.commonNftImage, commonNftImage) ||
                other.commonNftImage == commonNftImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstNftImage, commonNftImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageSetDtoCopyWith<_$_ImageSetDto> get copyWith =>
      __$$_ImageSetDtoCopyWithImpl<_$_ImageSetDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageSetDtoToJson(
      this,
    );
  }
}

abstract class _ImageSetDto implements ImageSetDto {
  const factory _ImageSetDto(
      {required final Uri firstNftImage,
      required final Uri commonNftImage}) = _$_ImageSetDto;

  factory _ImageSetDto.fromJson(Map<String, dynamic> json) =
      _$_ImageSetDto.fromJson;

  @override
  Uri get firstNftImage;
  @override
  Uri get commonNftImage;
  @override
  @JsonKey(ignore: true)
  _$$_ImageSetDtoCopyWith<_$_ImageSetDto> get copyWith =>
      throw _privateConstructorUsedError;
}
