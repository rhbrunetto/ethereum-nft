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
    required Uri firstImage,
    required Uri commonImage,
  }) async {
    try {
      final normalizedIdentifier = identifier.paramCase;

      final (imageCid, count) = await _handleImageAssets(
        normalizedIdentifier: normalizedIdentifier,
        firstImageUri: firstImage,
        commonImageUri: commonImage,
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

  Future<(String, int)> _handleImageAssets({
    required String normalizedIdentifier,
    required Uri firstImageUri,
    required Uri commonImageUri,
  }) async {
    final commonImageName = _buildCommonImageName(normalizedIdentifier);
    final commonImageIpfs = await _pinata
        .queryPins(name: commonImageName) //
        .then((it) => it.firstOrNull);

    if (commonImageIpfs != null) {
      // Common image already exists, so update counter and return it
      final count = commonImageIpfs.metaAt<int>(_countKey) ?? 1;
      await commonImageIpfs.updateMeta(meta: {_countKey: count + 1});

      return (commonImageIpfs.address, count);
    }

    // Common image does not exist yet, so let's check for the first image
    final firstImageName = _buildFirstImageName(normalizedIdentifier);
    final firstImageIpfs = await _pinata
        .queryPins(name: firstImageName) //
        .then((it) => it.firstOrNull);

    if (firstImageIpfs != null) {
      // First image already exists, should create the common image
      return _createImage(commonImageName, commonImageUri, 2);
    }

    // This is the first NFT image
    return _createImage(firstImageName, firstImageUri, 1);
  }

  Future<(String, int)> _createImage(String name, Uri image, int count) async {
    final imagePin = await _pinata.pinBytes(
      await http.get(image).then((it) => it.bodyBytes),
      name: name,
      meta: {_countKey: count},
    );

    return (imagePin.address, count);
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
String _buildFirstImageName(String name) => '$name-first-image.jpg';
String _buildCommonImageName(String name) => '$name-common-image.jpg';

const _countKey = 'count';
final _pinata = Pinata.viaPair(
  apiKey: io.Platform.environment['PINATA_KEY'] ?? '',
  secret: io.Platform.environment['PINATA_SECRET'] ?? '',
);
