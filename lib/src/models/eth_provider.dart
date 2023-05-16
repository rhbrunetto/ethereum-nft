import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';

class EthProvider {
  EthProvider({
    required this.httpClient,
    required this.web3client,
    required this.abiBaseUrl,
  });

  final Client httpClient;
  final Web3Client web3client;
  final String abiBaseUrl;
}
