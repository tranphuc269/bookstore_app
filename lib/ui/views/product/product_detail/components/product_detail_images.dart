import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_shadows.dart';
import '../../../../widgets/cached_image.dart';

class ProductDetailImages extends StatelessWidget {
  const ProductDetailImages({required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300,
      margin: const EdgeInsets.symmetric(vertical: 12),
      width: MediaQuery.of(context).size.width,
      child: SwipableStack(
        detectableSwipeDirections: const {
          SwipeDirection.right,
          SwipeDirection.left,
        },
        stackClipBehaviour: Clip.none,
        onSwipeCompleted: (index, direction) {
          if (kDebugMode) {}
        },
        horizontalSwipeThreshold: 0.6,
        verticalSwipeThreshold: 0.6,
        builder: (context, properties) {
          final itemIndex = properties.index % images.length;
          return Center(
            child: Container(
              child: CachedImage(
                url: images[itemIndex],
                borderRadius: BorderRadius.circular(12),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.white,
                  boxShadow: [
                    AppShadows.shadow2,
                    AppShadows.shadow3,
                    AppShadows.shadow3,
                    AppShadows.shadow3,
                  ]),
            ),
          );
        },
      ),
    );
  }
}
