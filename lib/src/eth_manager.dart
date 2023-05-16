import 'dart:convert';

import 'package:nft/src/models/eth_provider.dart';
import 'package:web3dart/web3dart.dart';

class EthManager {
  EthManager(this._provider);

  final EthProvider _provider;

  Future<DeployedContract?> getContractAbi(String contractId) async {
    try {
      final abiUrl = Uri.parse(_provider.abiBaseUrl).replace(
        queryParameters: {
          'module': 'contract',
          'action': 'getabi',
          'address': contractId,
        },
      );

      final contractAbi = await _provider.httpClient
          .get(abiUrl)
          .then((it) => it.body)
          .then(jsonDecode)
          .then((it) => it['result'] as String);

      return DeployedContract(
        ContractAbi.fromJson(contractAbi, 'NFT'),
        EthereumAddress.fromHex(contractId),
      );
    } on Exception {
      return null;
    }
  }

  Future<BigInt?> getNftPrice(DeployedContract contract) async {
    final priceFunction = contract.function('price');

    try {
      final price = await _provider.web3client.call(
        contract: contract,
        function: priceFunction,
        params: [],
      ).then((it) => it.first as BigInt);

      return price;
    } on Exception {
      return null;
    }
  }

  Future<bool> writeNft({
    required DeployedContract contract,
    required EthPrivateKey credentials,
  }) async {
    try {
      final mintFunction = contract.function('mint');

      await _provider.web3client.sendTransaction(
        credentials,
        Transaction.callContract(
          contract: contract,
          function: mintFunction,
          parameters: [BigInt.tryParse('100000000000000')],
        ),
      );

      return true;
    } on Exception catch (e) {
      print(e);

      return false;
    }
  }
}