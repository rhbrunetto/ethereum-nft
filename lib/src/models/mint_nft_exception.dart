import 'package:freezed_annotation/freezed_annotation.dart';

part 'mint_nft_exception.freezed.dart';

@freezed
sealed class MintNftException implements Exception {
  const factory MintNftException.invalidAbi() = InvalidAbiException;
  const factory MintNftException.noPrice() = NoPriceException;
}
