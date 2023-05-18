import 'dart:convert';
import 'dart:developer';
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
      final metadataName = _buildMetadataName(normalizedIdentifier);

      final existingIpfs = await _pinata
          .queryPins(name: metadataName)
          .then((it) => it.firstOrNull);

      final String ipfsAddress;
      if (existingIpfs != null) {
        ipfsAddress = existingIpfs.address;
      } else {
        ipfsAddress = await _createAsset(
          identifier: normalizedIdentifier,
          name: name,
          image: image,
          description: description,
        ).then((it) => it.address);
      }

      log('NFT Address: $ipfsAddress');

      return _buildIpfsUri(ipfsAddress);
    } on Exception {
      return null;
    }
  }

  Future<PinLink> _createAsset({
    required String identifier,
    required String name,
    required Uri image,
    String? description,
  }) async {
    // Upload image
    final imageBytes = await http.get(image).then((it) => it.bodyBytes);
    final imagePin = await _pinata.pinBytes(
      imageBytes,
      name: _buildImageName(identifier),
    );

    // Upload metadata
    final metadataJson = {
      'name': name,
      if (description != null) 'description': description,
      'image': _buildIpfsUri(imagePin.address).toString(),
    };

    return await _pinata.pinBytes(
      Uint8List.fromList(utf8.encode(jsonEncode(metadataJson))),
      name: _buildMetadataName(identifier),
      meta: {_countKey: 1},
    );
  }
}

Uri _buildIpfsUri(String cid) => Uri(scheme: 'ipfs', host: cid);
String _buildMetadataName(String name) => '$name-metadata.json';
String _buildImageName(String name) => '$name-image.jpg';
const _countKey = 'count';

final _pinata = Pinata.viaPair(
    apiKey: io.Platform.environment['PINATA_KEY'] ?? '',
    secret: io.Platform.environment['PINATA_SECRET'] ?? '');
