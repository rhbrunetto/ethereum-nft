import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'PORT', obfuscate: true)
  static final port = _Env.port;

  @EnviedField(varName: 'RPC_URL', obfuscate: true)
  static final rpcUrl = _Env.rpcUrl;

  @EnviedField(varName: 'ABI_URL', obfuscate: true)
  static final abiUrl = _Env.abiUrl;

  @EnviedField(varName: 'CONTRACT_ID', obfuscate: true)
  static final contractId = _Env.contractId;

  @EnviedField(varName: 'PRIVATE_KEY', obfuscate: true)
  static final privateKey = _Env.privateKey;

  @EnviedField(varName: 'PINATA_SECRET', obfuscate: true)
  static final pinataSecret = _Env.pinataSecret;

  @EnviedField(varName: 'PINATA_KEY', obfuscate: true)
  static final pinataKey = _Env.pinataKey;

  @EnviedField(varName: 'SENTRY_DSN', obfuscate: true)
  static final sentryDSN = _Env.sentryDSN;
}
