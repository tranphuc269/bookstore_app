import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app/app_constant.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_shadows.dart';
import '../../../core/themes/app_style.dart';
import '../../../data/models/response/catalog/category/category_data.dart';
import '../../views/product/product_list/product_list_controller.dart';
import '../../views/product/product_list/product_list_view.dart';
import '../cached_image.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({required this.category, required this.type});

  final CategoryData category;
  final ProductListEnum type;

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
                        category.name,
                        style: AppStyle.subtitle18,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: AppConst.defaultSmallMargin),
                        child: Text(
                          category.description,
                          style: AppStyle.subtitle14.copyWith(
                            color: const Color(0xFF323232).withOpacity(0.54),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
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
                    url: category.imgUrl,
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
        Get.toNamed(ProductListView.route, arguments: [
          category.id,
          type
        ]);
      },
    );
  }
}
