import 'dart:typed_data';

import 'package:ox_sdk/ox_sdk.dart';
import 'package:share_plus/share_plus.dart';

final shareServiceProvider = Provider<ShareService>(
  (ref) => ShareService(
    logger: XLoggerImpl(
      context: ShareService,
    ),
  ),
);

class ShareService {
  ShareService({required this.logger});

  final XLogger logger;

  Future<void> share(Uint8List image, String mime) async {
    // final tempDir = await getTemporaryDirectory();
    final filename = DateTime.now().toIso8601String();
    // final path = '${tempDir.path}/share-$filename.jpg';
    final test = XFile.fromData(image, mimeType: mime, name: filename);
    // await test.saveTo(path);
    // await file.writeAsBytes(image);
    // final file

    await Share.shareXFiles([test]);
  }
}
