import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app/app_constant.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_shadows.dart';
import '../../../core/themes/app_style.dart';
import '../../views/product/product_list/product_list_view.dart';
import '../cached_image.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({required this.img});

  final String img;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(AppConst.defaultSmallMargin),
        height: 140,
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                child: Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                          vertical: AppConst.defaultMediumMargin)
                      .copyWith(left: AppConst.defaultSmallMargin + 140),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.white,
                      boxShadow: [
                        AppShadows.shadow1,
                        AppShadows.shadow4,
                        AppShadows.shadow1
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Truyện kinh dị',
                        style: AppStyle.subtitle18,
                      ),
                      Text(
                        '120 Sản phẩm',
                        style: AppStyle.subtitle14.copyWith(
                          color: const Color(0xFF323232).withOpacity(0.54),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(
                              right: AppConst.defaultMediumMargin),
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.arrow_forward_outlined,
                            color: const Color(0xFF323232).withOpacity(0.54),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                alignment: Alignment.bottomCenter,
              ),
            ),
            Positioned.fill(
              child: Align(
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: CachedImage(
                    url: img,
                    borderRadius:
                        BorderRadius.circular(AppConst.defaultSmallMargin),
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              left: AppConst.defaultMediumMargin,
            ),
          ],
        ),
      ),
      onTap: () {
        Get.toNamed(ProductListView.route);
      },
    );
  }
}
