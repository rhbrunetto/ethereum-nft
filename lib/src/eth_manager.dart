import 'dart:convert';

import 'package:nft/src/models/eth_provider.dart';
import 'package:nft/src/models/mint_nft_exception.dart';
import 'package:web3dart/web3dart.dart';

class EthManager {
  EthManager(this._provider);

  final EthProvider _provider;

  DeployedContract? _cachedContract;

  Future<DeployedContract> getContractAbi(EthereumAddress contractId) async {
    if (_cachedContract != null) return _cachedContract!;

    try {
      final abiUrl = Uri.parse(_provider.abiBaseUrl).replace(
        queryParameters: {
          'module': 'contract',
          'action': 'getabi',
          'address': contractId.hex,
        },
      );

      final contractAbi = await _provider.httpClient
          .get(abiUrl)
          .then((it) => it.body)
          .then(jsonDecode)
          .then((it) => it['result'] as String);

      final contract = DeployedContract(
        ContractAbi.fromJson(contractAbi, 'MountainsNFT'),
        contractId,
      );

      _cachedContract = contract;

      return contract;
    } on Exception {
      throw MintNftException.invalidAbi();
    }
  }

  Future<BigInt> getCount({
    required DeployedContract contract,
    required String normalizedIdentifier,
  }) async {
    final countFunction = contract.function('nextForIdentifier');

    try {
      final count = await _provider.web3client.call(
        contract: contract,
        function: countFunction,
        params: [normalizedIdentifier],
      ).then((it) => it.first as BigInt);

      return count;
    } on Exception {
      throw MintNftException.countFailed();
    }
  }

  Future<void> writeNft({
    required DeployedContract contract,
    required EthPrivateKey credentials,
    required Uri asset,
    required String identifier,
    required BigInt count,
  }) async {
    try {
      final chainId = await _provider.web3client.getChainId();

      final mintFunction = contract.function('mint');

      await _provider.web3client.sendTransaction(
        credentials,
        Transaction.callContract(
          contract: contract,
          function: mintFunction,
          from: credentials.address,
          parameters: [
            credentials.address,
            asset.toString(),
            identifier,
            count,
          ],
        ),
        chainId: chainId.toInt(),
      );
    } on Exception {
      throw MintNftException.mintFailed();
    }
  }
}
