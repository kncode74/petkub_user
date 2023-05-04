import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  GalleryPage({super.key});

  final List<String> photo = [
    'https://heropomthailand.com/wp-content/uploads/2023/03/001-3000-64-scaled.jpg',
    'https://heropomthailand.com/wp-content/uploads/2023/03/001-3000-62-scaled.jpg',
    'https://heropomthailand.com/wp-content/uploads/2023/03/002-3000-66-scaled.jpg',
    'https://heropomthailand.com/wp-content/uploads/2023/03/003-3000-70-scaled.jpg',
    'https://heropomthailand.com/wp-content/uploads/2023/03/004-3000-64-scaled.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: gally());
  }

  Widget gally() => GridView.builder(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: const EdgeInsets.all(1),
        itemCount: photo.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: ((context, index) {
          return Container(
            padding: const EdgeInsets.all(0.5),
            child: InkWell(
              child: CachedNetworkImage(
                imageUrl: photo[index],
                fit: BoxFit.cover,
                placeholder: ((context, url) => Container(
                      color: Colors.grey,
                    )),
                errorWidget: (context, url, error) => Container(
                  color: Colors.red.shade400,
                ),
              ),
            ),
          );
        }),
      );
}
