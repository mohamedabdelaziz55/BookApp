import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SizedBox(
        height: h * .3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: CachedNetworkImage(
              placeholder: (context, url) => Center(child:const CircularProgressIndicator()),
              errorWidget:
                  (context, url, error) => Icon(Icons.error_outline),
          
              fit: BoxFit.fill,
              imageUrl: imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
