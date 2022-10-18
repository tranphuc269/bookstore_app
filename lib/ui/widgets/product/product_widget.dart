import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app/app_constant.dart';
import '../../../core/themes/app_style.dart';
import '../../views/product/product_detail/product_detail_view.dart';
import '../cached_image.dart';

enum PreviewEnum { VERTICAL, STACK }

class PreviewVerticalProductWidget extends StatelessWidget {
  const PreviewVerticalProductWidget({required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: SizedBox(
        // margin: const EdgeInsets.only(right: AppConst.defaultMediumMargin),
        width: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CachedImage(
              url: image,
              borderRadius: BorderRadius.circular(16),
            ),
            const SizedBox(height: AppConst.defaultSmallMargin,),
            Expanded(child: Padding(
              padding: AppConst.kPaddingSmallDefaultHorizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Fahrenheit 451', style: AppStyle.subtitle14),
                  Text(
                    'Ray Bradbury',
                    style: AppStyle.normalSmall.copyWith(
                      color: const Color(0xFF323232).withOpacity(0.65),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      onTap: () => Get.toNamed(ProductDetailView.route),
    );
  }
}

class PreviewStackProductWidget extends StatelessWidget {
  const PreviewStackProductWidget({required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return GestureDetector(
      child: SizedBox(
        width: maxWidth * 0.9,
        child: Stack(
          children: [
            Container(
              width: maxWidth * 0.9,
              margin: const EdgeInsets.only(top: 30, bottom: 1, left: 4),
              padding: const EdgeInsets.only(left: 120, top: 16, bottom: 16),
              decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(1, 1),
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Norse mythology',
                    style: AppStyle.subtitle16,
                  ),
                  Text(
                    'Neil Gaiman',
                    style: AppStyle.subtitle14.copyWith(
                      color: const Color(0xFF323232).withOpacity(0.65),
                    ),
                  ),
                  Text(
                    'In Norse Mythology, Gaiman stays true to the myths in envisioning the major Norse... pantheon: Odin, the... highest of the high, wise, daring, and cunning; Thor, Odin’s son, incredibly strong yet not the wisest of gods; and Loki―son of a giant―blood brother to Odin and a trickster and unsurpassable manipulator.',
                    style: AppStyle.normalSmall.copyWith(
                      color: const Color(0xFF323232).withOpacity(0.65),
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: Align(
                child: SizedBox(
                  width: 100,
                  child: CachedImage(
                    url: image,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              left: 16,
              bottom: 16,
            ),
          ],
        ),
      ),
      onTap: () => Get.toNamed(ProductDetailView.route),
    );
  }
}
