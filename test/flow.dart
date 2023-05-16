import 'package:nft/src/contract_abi.dart';
import 'package:test/test.dart';

const contractId = '0xc75C21ee08A6f25743980825ef2539508728b8C0';
const abiApiUrl = 'https://api-sepolia.etherscan.io/api';

void main() {

  test('Retrieve Contract ABI', () async {
    final abi = await getContractAbi(
      abiBaseUrl: abiApiUrl,
      contractId: contractId,
    );

    expect(abi, isNot(null));
  });
}
