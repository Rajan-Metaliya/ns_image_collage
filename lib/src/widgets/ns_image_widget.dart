import 'package:flutter/material.dart';

import '../../ns_image_collage.dart';

class NSImageWidget extends StatelessWidget {
  const NSImageWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  final NSImage image;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image.url,
      fit: BoxFit.cover,
    );
  }
}
