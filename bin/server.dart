import 'dart:developer';
import 'dart:io' as io;

import 'package:nft/src/env/env.dart';
import 'package:nft/src/handlers/nft_handler.dart';
import 'package:sentry/sentry.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart' as shelf_router;

Future<void> main() async {
  final sentryDsn = Env.sentryDSN;

  await Sentry.init((options) {
    options
      ..dsn = sentryDsn
      ..tracesSampleRate = 1.0;
  });

  final port = int.parse(Env.port);

  final errorReporter = createMiddleware(
    errorHandler: (error, stacktrace) async {
      await Sentry.captureException(error, stackTrace: stacktrace);
      Error.throwWithStackTrace(error, stacktrace);
    },
  );

  final cascade = Cascade().add(_apiV1.call);

  final server = await shelf_io.serve(
    logRequests().addMiddleware(errorReporter).addHandler(cascade.handler),
    io.InternetAddress.anyIPv4,
    port,
  );

  log('Serving at http://${server.address.host}:${server.port}');
}

final _apiV1 = shelf_router.Router()
  ..mount(
    '/api/v1',
    Cascade() //
        .add(addNftHandler())
        .handler,
  );
