import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app/app_constant.dart';
import '../../../core/helper/extension/double_extension.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_style.dart';
import '../../../data/models/response/catalog/product/product_data.dart';
import '../../views/product/product_detail/product_detail_view.dart';
import '../cached_image.dart';

enum PreviewEnum { VERTICAL, STACK }

class PreviewVerticalProductWidget extends StatelessWidget {
  const PreviewVerticalProductWidget({required this.productData});

  final ProductData productData;

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
              url: productData.images.first,
              borderRadius: BorderRadius.circular(16),
            ),
            const SizedBox(
              height: AppConst.defaultSmallMargin,
            ),
            Expanded(
              child: Padding(
                padding: AppConst.kPaddingSmallDefaultHorizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(productData.productName, style: AppStyle.subtitle14),
                    Text(
                      productData.price.formatMoney(),
                      style: AppStyle.headline4.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () => Get.toNamed(ProductDetailView.route),
    );
  }
}

class PreviewStackProductWidget extends StatelessWidget {
  const PreviewStackProductWidget({required this.productData});

  final ProductData productData;

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
                    productData.productName,
                    style: AppStyle.subtitle16,
                  ),
                  Text(
                    productData.price.formatMoney(),
                    style: AppStyle.subtitle16.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    productData.description,
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
                    url: productData.images.first,
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
