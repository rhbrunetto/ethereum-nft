import 'dart:developer';

import 'package:http/http.dart';
import 'package:nft/src/contract_abi.dart';
import 'package:nft/src/models/mint_nft_exception.dart';
import 'package:web3dart/web3dart.dart';
import 'package:web_socket_channel/io.dart';

const contractId = '0xc75C21ee08A6f25743980825ef2539508728b8C0';
const price = '100000000000';
const rpcUrl = 'https://sepolia.infura.io/v3/';
const wsUrl = 'ws://sepolia.infura.io/v3/';
const chainId = '11155111';
const abiApiUrl = 'https://api-sepolia.etherscan.io/api';
const mnemonic =
    'deer wonder absurd pet remember boost slush paper make feed sting film';

Future<void> mintNft({
  required String contractId,
}) async {
  final contract = await getContractAbi(
    abiBaseUrl: abiApiUrl, // from
    contractId: contractId,
  );

  if (contract == null) throw InvalidAbiException();

  // Define useful events and functions from the contract
  final transferEvent = contract.event('Transfer');
  final mintFunction = contract.function('mint');

  final client = _buildWeb3Client();

  // listen for the Transfer event when it's emitted by the contract above
  final subscription = client
      .events(FilterOptions.events(contract: contract, event: transferEvent))
      .take(1)
      .listen((event) {
    final topics = event.topics;
    final data = event.data;

    if (topics == null || data == null) return;

    final decoded = transferEvent.decodeResults(topics, data);

    final from = decoded[0] as EthereumAddress;
    final to = decoded[1] as EthereumAddress;
    final value = decoded[2] as BigInt;

    print('$from sent $value MetaCoins to $to');
  });

  // send all our MetaCoins to the other address by calling the sendCoin
  // function
  // await client.sendTransaction(
  //   credentials,
  //   Transaction.callContract(
  //     contract: contract,
  //     function: sendFunction,
  //     parameters: [receiver, balance.first],
  //   ),
  // );

  await subscription.asFuture();
  await subscription.cancel();

  await client.dispose();
}

// final mintPrice = ethers.utils.parseEther(price);
// final walletMnemonic = EWallet.Wallet.fromMnemonic(mnemonic);
// final privateKey = walletMnemonic.privateKey;
// final credentials = EthPrivateKey.fromHex(privateKey!);
// final contract = EthereumAddress.fromHex(contractId);

// final address = credentials.address;
// final ethClient = Web3Client(apiUrl, Dio().httpClientAdapter);

Future<BigInt?> getNftPrice({
  required Web3Client web3client,
  required DeployedContract contract,
}) async {
  final priceFunction = contract.function('price');

  try {
    // check the NFT price by calling the appropriate function
    final price = await web3client
        .call(contract: contract, function: priceFunction, params: [])
        .then((it) => it.first as String)
        .then(BigInt.parse);

    print('The NFT costs $price ETH');

    return price;
  } on Exception {
    return null;
  }
}

Future<void> main() async {
  final contract = await getContractAbi(
    abiBaseUrl: abiApiUrl, // from
    contractId: contractId,
  );

  if (contract == null) throw InvalidAbiException();

  final web3Client = _buildWeb3Client();

  final price = await getNftPrice(
    web3client: web3Client,
    contract: contract,
  );

  log(price.toString());
}

Web3Client _buildWeb3Client() => Web3Client(
      rpcUrl,
      Client(),
      socketConnector: () => IOWebSocketChannel.connect(wsUrl).cast<String>(),
    );
