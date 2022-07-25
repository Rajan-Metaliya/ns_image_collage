///NSImage is a class that represents an image.
///
class NSImage {
  String url;
  String? thumbnailUrl;
  String? localPath;

  bool get hasThumbnail => thumbnailUrl != null && thumbnailUrl!.isNotEmpty;

  bool get hasLocalPath => thumbnailUrl != null;

  NSImage({
    required this.url,
    this.thumbnailUrl,
    this.localPath,
  });
}
