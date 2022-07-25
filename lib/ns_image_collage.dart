library ns_image_collage;

import 'package:flutter/material.dart';

import 'src/models/ns_image.dart';
import 'src/widgets/ns_image_widget.dart';

export 'src/models/ns_image.dart';

class NSImageCollage extends StatelessWidget {
  const NSImageCollage({Key? key, required this.images}) : super(key: key);

  final List<NSImage> images;

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return const SizedBox.shrink();
    }
    if (images.length == 1) {
      return NSImageWidget(
        image: images.first,
      );
    }
    if (images.length == 2) {
      return Column(
        children: images.map((image) {
          return Expanded(
            child: NSImageWidget(
              image: image,
            ),
          );
        }).toList(),
      );
    }
    if (images.length == 3) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: NSImageWidget(
              image: images.first,
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: NSImageWidget(
                    image: images[1],
                  ),
                ),
                Expanded(
                  child: NSImageWidget(
                    image: images.last,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
    if (images.length == 4) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: NSImageWidget(
              image: images.first,
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: NSImageWidget(
                    image: images[1],
                  ),
                ),
                Expanded(
                  child: NSImageWidget(
                    image: images[2],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: NSImageWidget(
              image: images.last,
            ),
          ),
        ],
      );
    }
    if (images.length == 5) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: NSImageWidget(
              image: images.first,
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: NSImageWidget(
                    image: images[1],
                  ),
                ),
                Expanded(
                  child: NSImageWidget(
                    image: images[2],
                  ),
                ),
                Expanded(
                  child: NSImageWidget(
                    image: images[3],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: NSImageWidget(
              image: images.last,
            ),
          ),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: NSImageWidget(
            image: images.first,
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: NSImageWidget(
                  image: images[1],
                ),
              ),
              Expanded(
                child: NSImageWidget(
                  image: images[2],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: NSImageWidget(
                  image: images[3],
                ),
              ),
              Expanded(
                child: NSImageWidget(
                  image: images[4],
                ),
              ),
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: [
                    NSImageWidget(
                      image: images.last,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Center(
                      child: Text(
                        '${images.length - 6} +',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
