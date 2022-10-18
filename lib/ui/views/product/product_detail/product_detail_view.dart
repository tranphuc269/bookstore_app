import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../widgets/base/base_view.dart';
import '../../../widgets/colored_status_bar.dart';
import 'components/product_detail_appbar.dart';
import 'components/product_detail_bottom_sheet.dart';
import 'components/product_detail_images.dart';
import 'components/product_detail_introduction.dart';
import 'components/product_detail_related.dart';
import 'components/product_detail_review.dart';
import 'components/product_detail_specifications.dart';
import 'product_detail_controller.dart';

class ProductDetailView extends GetView<ProductDetailController> {
  static const route = '/product_detail';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ColoredStatusBar(
      child: Scaffold(
        appBar: ProductDetailAppBar(),
        backgroundColor: AppColors.white,
        body: Obx(
          () => Stack(
            children: [
              BaseView(
                loadingEnabled: controller.isLoading.isTrue,
                errorEnabled: controller.isError.value,
                onRetry: controller.onInit,
                child: Column(
                  children: [
                    ProductDetailImages(),
                    ProductDetailIntroduction(),
                    ProductDetailSpecifications(),
                    ProductDetailReview(),
                    ProductDetailRelated(),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
              Positioned.fill(
                child: Align(
                  child: ProductDetailBottomSheet(),
                  alignment: Alignment.bottomCenter,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
