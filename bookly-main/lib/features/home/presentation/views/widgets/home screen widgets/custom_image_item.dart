import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem(
      {super.key, required this.borderRadius, required this.imageUrl});
  final BorderRadius borderRadius;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: AspectRatio(
          aspectRatio: 150 / 224,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            errorWidget: (context, url, error) {
              return const Icon(Icons.error);
            },
            //errorWidget: (context, url, error) => const Icon(Icons.error),
          )
          /*Container(
          decoration: BoxDecoration(
            color: Colors.white,
            //BorderRadius.all(Radius.circular(16.r))
            borderRadius: borderRadius,
            image: const DecorationImage(
              image: cached(imageUrl:),
              fit: BoxFit.fill,
            ),
          ),
        ),*/
          ),
    );
  }
}
