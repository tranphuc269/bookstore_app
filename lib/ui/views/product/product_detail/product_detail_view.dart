import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/base/stateless_view_base.dart';
import '../../../widgets/base/base_view.dart';
import 'components/product_detail_appbar.dart';
import 'components/product_detail_bottom_sheet.dart';
import 'components/product_detail_images.dart';
import 'components/product_detail_introduction.dart';
import 'components/product_detail_related.dart';
import 'components/product_detail_review.dart';
import 'components/product_detail_specifications.dart';
import 'product_detail_controller.dart';

class ProductDetailView extends StateLessViewBase<ProductDetailController> {

  static const route = '/product_detail';

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    return Obx(
      () => Stack(
        children: [
          BaseView(
            loadingEnabled: controller.isLoading.isTrue,
            errorEnabled: controller.isError.value,
            onRetry: controller.onInit,
            isConnectNetwork: controller.isConnectNetwork.value,
            child: Column(
              children: [
                ProductDetailImages(images: viewModel.productData.images,),
                ProductDetailIntroduction(productData: viewModel.productData,),
                ProductDetailSpecifications(productData: viewModel.productData,),
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
              child: ProductDetailBottomSheet(addToCart: controller.addToCart,),
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    return ProductDetailAppBar();
  }
}
