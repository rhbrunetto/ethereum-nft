import 'package:nft/src/env/env.dart';
import 'package:nft/src/utils.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart' as shelf_router;

Handler addPingHandler() => (shelf_router.Router()
      ..get(
        '/ping',
        (it) => _pingHandler(it),
      ))
    .call;

Future<Response> _pingHandler(Request request) async =>
    processRequest<Json, Json>(
      request,
      (i) => i,
      (data) async => {
        'rpcUrl': Env.rpcUrl,
        'contractId': Env.contractId,
      },
    );
