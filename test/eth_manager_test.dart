import 'package:http/http.dart';
import 'package:nft/src/eth_manager.dart';
import 'package:nft/src/models/eth_provider.dart';
import 'package:test/test.dart';
import 'package:web3dart/web3dart.dart';
import 'package:web_socket_channel/io.dart';

const privateKey =
    '66576e6f3c65b93c656f07967d47d78d612bf52b0e9909f14ded403da0afee8d';
const rpcUrl = 'https://sepolia.infura.io/v3/dfa1cf1556e641cb8343f5818a34a415';
const wsUrl = 'wss://sepolia.infura.io/v3/dfa1cf1556e641cb8343f5818a34a415';
const contractId = '0xb310e62731C5c089ce2a36D2B9D8EeDEAD8DE39d';
const abiApiUrl = 'https://api-sepolia.etherscan.io/api';

void main() {
  late EthManager ethManager;

  setUp(() {
    final client = Client();
    final ethProvider = EthProvider(
      abiBaseUrl: abiApiUrl,
      httpClient: client,
      web3client: Web3Client(
        rpcUrl,
        client,
        socketConnector: () => IOWebSocketChannel.connect(wsUrl).cast<String>(),
      ),
    );

    ethManager = EthManager(ethProvider);
  });

  test('Retrieve Contract ABI', () async {
    final contract = await ethManager.getContractAbi(contractId);

    expect(contract, isA<DeployedContract>());
  });

  test('Retrieve NFT Price', () async {
    final contract = await ethManager.getContractAbi(contractId);
    final price = await ethManager.getNftPrice(contract!);

    expect(price, isA<BigInt>());
  });

  test('Mint NFT with given price', () async {
    final contract = await ethManager.getContractAbi(contractId);
    final credentials = EthPrivateKey.fromHex(privateKey);

    final minted = await ethManager.writeNft(
      contract: contract!,
      credentials: credentials,
    );

    expect(minted, true);
  });
}
