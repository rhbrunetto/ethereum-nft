import 'dart:io' as io;

import 'package:http/http.dart' as http;
import 'package:nft/src/eth_manager.dart';
import 'package:nft/src/models/eth_provider.dart';
import 'package:nft/src/models/mint_nft_exception.dart';
import 'package:nft/src/utils.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart' as shelf_router;
import 'package:web3dart/web3dart.dart';
import 'package:web_socket_channel/io.dart';

Handler addNftHandler() {
  final rpcUrl = io.Platform.environment['RPC_URL'] ?? '';
  final wsUrl = io.Platform.environment['WS_URL'] ?? '';
  final abiUrl = io.Platform.environment['ABI_URL'] ?? '';
  final privateKey = io.Platform.environment['PRIVATE_KEY'] ?? '';
  final contractId = io.Platform.environment['CONTRACT_ID'] ?? '';

  final provider = EthProvider(
    abiBaseUrl: abiUrl,
    httpClient: http.Client(),
    web3client: Web3Client(
      rpcUrl,
      http.Client(),
      socketConnector: () => IOWebSocketChannel.connect(wsUrl).cast<String>(),
    ),
  );

  return (shelf_router.Router()
        ..post(
          '/mintNft',
          (it) => _nftRouteHandler(
            it,
            ethManager: EthManager(provider),
            contractId: EthereumAddress.fromHex(contractId),
            credentials: EthPrivateKey.fromHex(privateKey),
          ),
        ))
      .call;
}

Future<Response> _nftRouteHandler(
  Request request, {
  required EthManager ethManager,
  required EthereumAddress contractId,
  required EthPrivateKey credentials,
}) async =>
    processRequest<Json, Json>(
      request,
      (i) => i,
      (data) async {
        final contract = await ethManager.getContractAbi(contractId);
        if (contract == null) throw MintNftException.invalidAbi();

        final price = await ethManager.getNftPrice(contract);
        if (price == null) throw MintNftException.noPrice();

        await ethManager.writeNft(
          contract: contract,
          price: price,
          credentials: credentials,
        );

        return {};
      },
    );
