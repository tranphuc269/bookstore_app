import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'common_widget.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    required this.url,
    Key? key,
    this.borderRadius,
  }) : super(key: key);

  final String url;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(30),
      child: CachedNetworkImage(
        imageUrl: url,
        placeholder: (context, url) => platformLoadingIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fit: BoxFit.cover,
        // width: size?.width,
        // height: size?.height,
      ),
    );
  }
}
