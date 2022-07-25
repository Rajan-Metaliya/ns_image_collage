import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../ns_image_collage.dart';

class NSImageWidget extends StatelessWidget {
  const NSImageWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  final NSImage image;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image.url,
      fit: BoxFit.cover,
      placeholder: (context, url) {
        if (image.hasThumbnail) {
          final imageWidget = CachedNetworkImage(
            imageUrl: image.thumbnailUrl!,
            fit: BoxFit.cover,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                const Center(child: CircularProgressIndicator()),
          );

          return imageWidget;
        }

        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Shimmer.fromColors(
              baseColor: Colors.grey.withOpacity(0.5),
              highlightColor: Colors.white.withOpacity(0.1),
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        );
      },
    );
  }
}
