// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mint_nft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MintNftRequiestDto _$$_MintNftRequiestDtoFromJson(
        Map<String, dynamic> json) =>
    _$_MintNftRequiestDto(
      identifier: json['identifier'] as String,
      title: json['title'] as String,
      imageSet: ImageSetDto.fromJson(json['imageSet'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_MintNftRequiestDtoToJson(
        _$_MintNftRequiestDto instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'title': instance.title,
      'imageSet': instance.imageSet,
      'description': instance.description,
    };

_$_ImageSetDto _$$_ImageSetDtoFromJson(Map<String, dynamic> json) =>
    _$_ImageSetDto(
      firstNftImage: Uri.parse(json['firstNftImage'] as String),
      commonNftImage: Uri.parse(json['commonNftImage'] as String),
    );

Map<String, dynamic> _$$_ImageSetDtoToJson(_$_ImageSetDto instance) =>
    <String, dynamic>{
      'firstNftImage': instance.firstNftImage.toString(),
      'commonNftImage': instance.commonNftImage.toString(),
    };
