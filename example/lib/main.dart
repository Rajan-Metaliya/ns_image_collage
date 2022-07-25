import 'package:flutter/material.dart';
import 'package:ns_image_collage/ns_image_collage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<NSImage> oneImage = [
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
  ];
  List<NSImage> twoImages = [
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
    NSImage(
      url:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ),
  ];
  List<NSImage> threeImages = [
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
    NSImage(
      url:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ),
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
  ];
  List<NSImage> fourImages = [
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
    NSImage(
      url:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ),
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
    NSImage(
      url:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ),
  ];
  List<NSImage> fiveImages = [
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
    NSImage(
      url:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ),
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
    NSImage(
      url:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ),
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
  ];
  List<NSImage> moreThanFiveImages = [
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
    NSImage(
      url:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ),
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
    NSImage(
      url:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ),
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
    NSImage(
      url:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ),
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
    NSImage(
      url:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ),
    NSImage(
      url:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
    NSImage(
      url:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        children: [
          NSImageCollage(
            images: oneImage,
          ),
          NSImageCollage(
            images: twoImages,
          ),
          NSImageCollage(
            images: threeImages,
          ),
          NSImageCollage(
            images: fourImages,
          ),
          NSImageCollage(
            images: fiveImages,
          ),
          NSImageCollage(
            images: moreThanFiveImages,
          ),
        ],
      ),
    );
  }
}
