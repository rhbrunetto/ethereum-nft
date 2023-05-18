import 'package:freezed_annotation/freezed_annotation.dart';

part 'mint_nft.freezed.dart';
part 'mint_nft.g.dart';

@freezed
class MintNftRequestDto with _$MintNftRequestDto {
  const factory MintNftRequestDto({
    required String identifier,
    required String title,
    required ImageSetDto imageSet,
    String? description,
  }) = _MintNftRequiestDto;

  factory MintNftRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MintNftRequestDtoFromJson(json);
}

@freezed
class ImageSetDto with _$ImageSetDto {

  const factory ImageSetDto({
    required Uri firstNftImage,
    required Uri commonNftImage,
  }) = _ImageSetDto;

  factory ImageSetDto.fromJson(Map<String, dynamic> json) =>
      _$ImageSetDtoFromJson(json);

}

