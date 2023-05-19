import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:nft/src/env/env.dart';
import 'package:nft/src/models/mint_nft_exception.dart';
import 'package:pinata/pinata.dart';

class IpfsManager {
  Future<Uri> pinAssets({
    required String identifier,
    required int sequenceNumber,
    required String name,
    required String? description,
    required Uri firstImage,
    required Uri commonImage,
  }) async {
    try {
      final params = sequenceNumber == 1
          ? (_buildFirstImageName(identifier), firstImage)
          : (_buildCommonImageName(identifier), commonImage);

      final imageCid = await _retrieveOrCreateImage(params.$1, params.$2);
      final metadataPin = await _createMetadata(
        identifier: identifier,
        name: name,
        sequenceNumber: sequenceNumber,
        imageCid: imageCid,
        description: description,
      );

      return _buildIpfsUri(metadataPin.address);
    } on MintNftException {
      rethrow;
    } on Exception {
      throw MintNftException.invalidAsset();
    }
  }

  Future<String> _retrieveOrCreateImage(String imageName, Uri image) async {
    final existingImageIpfs = await _pinata
        .queryPins(name: imageName, status: PinStatus.pinned) //
        .then((it) => it.firstOrNull);

    if (existingImageIpfs != null) return existingImageIpfs.address;

    // Uploads image to IPFS
    final imagePin = await _pinata.pinBytes(
      await http.get(image).then((it) => it.bodyBytes),
      name: imageName,
    );

    return imagePin.address;
  }

  Future<PinLink> _createMetadata({
    required String identifier,
    required String name,
    required int sequenceNumber,
    required String imageCid,
    String? description,
  }) async {
    final metadataJson = {
      'name': '$name$sequenceNumber',
      'image': _buildIpfsUri(imageCid).toString(),
      if (description != null) 'description': description,
    };

    return await _pinata.pinBytes(
      Uint8List.fromList(utf8.encode(jsonEncode(metadataJson))),
      name: _buildMetadataName(identifier, sequenceNumber),
    );
  }
}

Uri _buildIpfsUri(String cid) => Uri(scheme: 'ipfs', host: cid);
String _buildFirstImageName(String name) => '$name-first-image.jpg';
String _buildCommonImageName(String name) => '$name-common-image.jpg';
String _buildMetadataName(String name, int sequenceNumber) =>
    '$name-$sequenceNumber-metadata.json';

final _pinata = Pinata.viaPair(
  apiKey: Env.pinataKey,
  secret: Env.pinataSecret,
);
