import 'dart:developer';
import 'dart:io' as io;

import 'package:http/http.dart' as http;
import 'package:nft/src/dto/mint_nft.dart';
import 'package:nft/src/eth_manager.dart';
import 'package:nft/src/ipfs_manager.dart';
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
            ipfsManager: IpfsManager(),
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
  required IpfsManager ipfsManager,
  required EthereumAddress contractId,
  required EthPrivateKey credentials,
}) async =>
    processRequest<MintNftRequestDto, Json>(
      request,
      MintNftRequestDto.fromJson,
      (data) async {
        final contract = await ethManager.getContractAbi(contractId);
        if (contract == null) throw MintNftException.invalidAbi();

        final metadata = await ipfsManager.retrieveOrUploadAsset(
          identifier: data.identifier,
          name: data.title,
          firstImage: data.imageSet.firstNftImage,
          commonImage: data.imageSet.commonNftImage,
          description: data.description,
        );
        if (metadata == null) throw MintNftException.retrieveAsset();

        log(metadata.toString());

        await ethManager.writeNft(
          contract: contract,
          credentials: credentials,
          asset: metadata,
        );

        return {};
      },
    );
