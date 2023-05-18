import 'dart:convert';
import 'dart:io' as io;
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:pinata/pinata.dart';
import 'package:recase/recase.dart';

class IpfsManager {
  Future<Uri?> retrieveOrUploadAsset({
    required String identifier,
    required String name,
    required String? description,
    required Uri image,
  }) async {
    try {
      final normalizedIdentifier = identifier.paramCase;

      final (imageCid, count) = await _retrieveOrCreateImage(
        normalizedIdentifier: normalizedIdentifier,
        image: image,
      );

      final metadataPin = await _createMetadata(
        identifier: normalizedIdentifier,
        name: name,
        count: count,
        imageCid: imageCid,
        description: description,
      );

      return _buildIpfsUri(metadataPin.address);
    } on Exception {
      return null;
    }
  }

  Future<(String, int)> _retrieveOrCreateImage({
    required String normalizedIdentifier,
    required Uri image,
  }) async {
    final String imageCid;
    final int count;

    final imageName = _buildImageName(normalizedIdentifier);
    final existingImageIpfs = await _pinata
        .queryPins(name: imageName) //
        .then((it) => it.firstOrNull);

    if (existingImageIpfs != null) {
      imageCid = existingImageIpfs.address;
      count = existingImageIpfs.metaAt(_countKey) ?? 1;

      // Increments current image uses
      await existingImageIpfs.updateMeta(meta: {_countKey: count + 1});
    } else {
      // Uploads image to IPFS
      final imagePin = await _pinata.pinBytes(
        await http.get(image).then((it) => it.bodyBytes),
        name: imageName,
        meta: {_countKey: 1},
      );

      imageCid = imagePin.address;
      count = 1;
    }

    return (imageCid, count);
  }

  Future<PinLink> _createMetadata({
    required String identifier,
    required String name,
    required int count,
    required String imageCid,
    String? description,
  }) async {
    final metadataJson = {
      'name': '$name$count',
      'image': _buildIpfsUri(imageCid).toString(),
      if (description != null) 'description': description,
    };

    return await _pinata.pinBytes(
      Uint8List.fromList(utf8.encode(jsonEncode(metadataJson))),
      name: _buildMetadataName('$identifier-$count'),
    );
  }
}

Uri _buildIpfsUri(String cid) => Uri(scheme: 'ipfs', host: cid);
String _buildMetadataName(String name) => '$name-metadata.json';
String _buildImageName(String name) => '$name-image.jpg';

const _countKey = 'count';
final _pinata = Pinata.viaPair(
  apiKey: io.Platform.environment['PINATA_KEY'] ?? '',
  secret: io.Platform.environment['PINATA_SECRET'] ?? '',
);
