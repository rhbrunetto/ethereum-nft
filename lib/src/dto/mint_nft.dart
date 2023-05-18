import 'package:freezed_annotation/freezed_annotation.dart';

part 'mint_nft.freezed.dart';
part 'mint_nft.g.dart';

@freezed
class MintNftRequest with _$MintNftRequest {
  const factory MintNftRequest({
    required String identifier,
    required String title,
    required Uri image,
    String? description,
  }) = _MintNftRequiest;

  factory MintNftRequest.fromJson(Map<String, dynamic> json) =>
      _$MintNftRequestFromJson(json);
}