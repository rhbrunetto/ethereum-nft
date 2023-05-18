import 'package:freezed_annotation/freezed_annotation.dart';

part 'mint_nft_exception.freezed.dart';
part 'mint_nft_exception.g.dart';

@freezed
sealed class MintNftException with _$MintNftException implements Exception {
  const factory MintNftException.invalidAbi() = InvalidAbiException;
  const factory MintNftException.retrieveAsset() = RetrieveAssetException;
  const factory MintNftException.smartContractFailed() = SmartContractException;

  factory MintNftException.fromJson(Map<String, dynamic> json) =>
      _$MintNftExceptionFromJson(json);
}
