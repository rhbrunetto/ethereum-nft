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

MintNftRequest _$MintNftRequestFromJson(Map<String, dynamic> json) {
  return _MintNftRequiest.fromJson(json);
}

/// @nodoc
mixin _$MintNftRequest {
  String get identifier => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Uri get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MintNftRequestCopyWith<MintNftRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MintNftRequestCopyWith<$Res> {
  factory $MintNftRequestCopyWith(
          MintNftRequest value, $Res Function(MintNftRequest) then) =
      _$MintNftRequestCopyWithImpl<$Res, MintNftRequest>;
  @useResult
  $Res call({String identifier, String title, Uri image});
}

/// @nodoc
class _$MintNftRequestCopyWithImpl<$Res, $Val extends MintNftRequest>
    implements $MintNftRequestCopyWith<$Res> {
  _$MintNftRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? title = null,
    Object? image = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MintNftRequiestCopyWith<$Res>
    implements $MintNftRequestCopyWith<$Res> {
  factory _$$_MintNftRequiestCopyWith(
          _$_MintNftRequiest value, $Res Function(_$_MintNftRequiest) then) =
      __$$_MintNftRequiestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier, String title, Uri image});
}

/// @nodoc
class __$$_MintNftRequiestCopyWithImpl<$Res>
    extends _$MintNftRequestCopyWithImpl<$Res, _$_MintNftRequiest>
    implements _$$_MintNftRequiestCopyWith<$Res> {
  __$$_MintNftRequiestCopyWithImpl(
      _$_MintNftRequiest _value, $Res Function(_$_MintNftRequiest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$_MintNftRequiest(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MintNftRequiest implements _MintNftRequiest {
  const _$_MintNftRequiest(
      {required this.identifier, required this.title, required this.image});

  factory _$_MintNftRequiest.fromJson(Map<String, dynamic> json) =>
      _$$_MintNftRequiestFromJson(json);

  @override
  final String identifier;
  @override
  final String title;
  @override
  final Uri image;

  @override
  String toString() {
    return 'MintNftRequest(identifier: $identifier, title: $title, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MintNftRequiest &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, title, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MintNftRequiestCopyWith<_$_MintNftRequiest> get copyWith =>
      __$$_MintNftRequiestCopyWithImpl<_$_MintNftRequiest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MintNftRequiestToJson(
      this,
    );
  }
}

abstract class _MintNftRequiest implements MintNftRequest {
  const factory _MintNftRequiest(
      {required final String identifier,
      required final String title,
      required final Uri image}) = _$_MintNftRequiest;

  factory _MintNftRequiest.fromJson(Map<String, dynamic> json) =
      _$_MintNftRequiest.fromJson;

  @override
  String get identifier;
  @override
  String get title;
  @override
  Uri get image;
  @override
  @JsonKey(ignore: true)
  _$$_MintNftRequiestCopyWith<_$_MintNftRequiest> get copyWith =>
      throw _privateConstructorUsedError;
}
