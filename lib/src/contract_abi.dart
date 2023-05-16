import 'dart:convert';

import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';

Future<DeployedContract?> getContractAbi({
  required String abiBaseUrl,
  required String contractId,
}) async {
  try {
    final abiUrl = Uri.parse(abiBaseUrl).replace(
      queryParameters: {
        'module': 'contract',
        'action': 'getabi',
        'address': contractId,
      },
    );

    final response = await Client().get(abiUrl);
    final contractAbi = jsonDecode(response.body)['result'];

    return DeployedContract(
      ContractAbi.fromJson(contractAbi, 'NFT'),
      EthereumAddress.fromHex(contractId),
    );
  } on Exception {
    return null;
  }
}
