import 'dart:convert';

import 'package:nft/src/models/mint_nft_exception.dart';
import 'package:shelf/shelf.dart';

typedef Json = Map<String, dynamic>;

Future<Response> processRequest<T, R>(
  Request request,
  T Function(Json) parse,
  Future<R> Function(T data) handler,
) async {
  final body = await request.readAsString();

  final T dto;
  try {
    final Json data = body.isEmpty ? {} : json.decode(body) as Json;
    dto = parse(data);
  } on Object {
    return Response.badRequest(body: 'Invalid JSON');
  }

  try {
    return Response.ok(
      json.encode(await handler(dto)),
      headers: {
        'content-type': 'application/json',
      },
    );
  } on MintNftException catch (e) {
    return Response.internalServerError(
      body: json.encode(e.toJson()),
      headers: {
        'content-type': 'application/json',
      },
    );
  } on Exception {
    return Response.internalServerError();
  }
}
