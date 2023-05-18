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
    required Uri image,
  }) async {
    try {
      final normalizedIdentifier = identifier.paramCase;
      final metadataName = _buildMetadataName(normalizedIdentifier);

      final existingIpfs = await _pinata
          .queryPins(name: metadataName)
          .then((it) => it.firstOrNull?.address);

      final String ipfsAddress;
      if (existingIpfs != null) {
        ipfsAddress = existingIpfs;
      } else {
        ipfsAddress = await _createAsset(normalizedIdentifier, name, image)
            .then((it) => it.address);
      }

      log('NFT Address: $ipfsAddress');

      return _buildIpfsUri(ipfsAddress);
    } on Exception {
      return null;
    }
  }

  Future<PinLink> _createAsset(
    String identifier,
    String name,
    Uri image,
  ) async {
    // Upload image
    final imageBytes = await http.get(image).then((it) => it.bodyBytes);
    final imagePin = await _pinata.pinBytes(
      imageBytes,
      name: _buildImageName(identifier),
    );

    // Uploads and returns Metadata
    final metadataJson = {
      'name': name,
      'image': _buildIpfsUri(imagePin.address).toString(),
    };

    return await _pinata.pinBytes(
      Uint8List.fromList(utf8.encode(jsonEncode(metadataJson))),
      name: _buildMetadataName(identifier),
    );
  }
}

Uri _buildIpfsUri(String cid) => Uri(scheme: 'ipfs', host: cid);
String _buildMetadataName(String name) => '$name-metadata.json';
String _buildImageName(String name) => '$name-image.jpg';

final _pinata = Pinata.viaPair(
    apiKey: io.Platform.environment['PINATA_KEY'] ?? '',
    secret: io.Platform.environment['PINATA_SECRET'] ?? '');
