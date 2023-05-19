import 'package:http/http.dart' as http;
import 'package:nft/src/dto/mint_nft.dart';
import 'package:nft/src/env/env.dart';
import 'package:nft/src/eth_manager.dart';
import 'package:nft/src/ipfs_manager.dart';
import 'package:nft/src/models/eth_provider.dart';
import 'package:nft/src/utils.dart';
import 'package:recase/recase.dart';
import 'package:sentry/sentry.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart' as shelf_router;
import 'package:web3dart/web3dart.dart';

Handler addNftHandler() {
  final rpcUrl = Env.rpcUrl;
  final abiUrl = Env.abiUrl;
  final privateKey = Env.privateKey;
  final contractId = Env.contractId;

  final provider = EthProvider(
    abiBaseUrl: abiUrl,
    httpClient: http.Client(),
    web3client: Web3Client(rpcUrl, http.Client()),
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
        final normalizedIdentifier = data.identifier.paramCase;
        final contract = await ethManager.getContractAbi(contractId);

        final count = await ethManager.getCount(
          contract: contract,
          normalizedIdentifier: normalizedIdentifier,
        );

        // The number displayed on NFT's title is count+1 (0 -> Name1)
        final sequenceNumber = count.toInt() + 1;
        final metadata = await ipfsManager.pinAssets(
          identifier: normalizedIdentifier,
          sequenceNumber: sequenceNumber,
          name: data.title,
          firstImage: data.imageSet.firstNftImage,
          commonImage: data.imageSet.commonNftImage,
          description: data.description,
        );

        await ethManager.writeNft(
          contract: contract,
          credentials: credentials,
          asset: metadata,
          identifier: normalizedIdentifier,
          count: count,
        );

        await Sentry.captureEvent(
          SentryEvent(
            environment: contractId.hex,
            level: SentryLevel.info,
            message: SentryMessage('Minted new NFT'),
          ),
          withScope: (scope) => scope
            ..setExtra('identifier', normalizedIdentifier)
            ..setExtra('title', data.title)
            ..setExtra('sequenceNumber', sequenceNumber),
        );

        return {};
      },
    );
