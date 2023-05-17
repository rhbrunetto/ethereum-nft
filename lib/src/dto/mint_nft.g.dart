// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mint_nft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MintNftRequiest _$$_MintNftRequiestFromJson(Map<String, dynamic> json) =>
    _$_MintNftRequiest(
      name: json['name'] as String,
      image: Uri.parse(json['image'] as String),
    );

Map<String, dynamic> _$$_MintNftRequiestToJson(_$_MintNftRequiest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image.toString(),
    };
