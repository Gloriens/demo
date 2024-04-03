import 'package:serverpod/serverpod.dart';

class FileUploadEndpoint extends Endpoint {
  Future<String?> getUploadDescription(Session session, String path) async {
    return await session.storage.createDirectFileUploadDescription(
      storageId: 'public',
      path: path,
    );
  }

  Future<bool> verifyUpload(Session session, String path) async {
    return await session.storage.verifyDirectFileUpload(
      storageId: 'public',
      path: path,
    );
  }

  Future<String> getUrl(Session session, String path) async {
    var url = await session.storage.getPublicUrl(
      storageId: 'public',
      path: path,
    );
    return url.toString();
  }
}
