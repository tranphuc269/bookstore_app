import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app/size_config.dart';
import '../../../../core/helper/dialog_helper.dart';
import '../../../../data/models/response/catalog/product/cart/cart_added_request.dart';
import '../../../../data/models/response/catalog/product/product_data.dart';
import '../../../../data/sources/server/catalog/product/product_service_impl.dart';
import '../../../widgets/default_button.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class ProductDetailBody extends StatelessWidget {
  const ProductDetailBody({required this.product, Key? key}) : super(key: key);

  final ProductData product;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: const Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    // ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: 'Thêm vào giỏ hàng',
                          press: () {
                            Get.find<ProductServiceImpl>().addToCart(
                              onSuccess: () {
                                AppDialog.show(
                                    message: 'Thêm sản phẩm thành công',
                                    onPress: Get.back,
                                    typeDialog: TypeDialog.SUCCESS);
                              },
                              onFailure: () {
                                AppDialog.show(
                                    message: 'Có lỗi xảy ra, vui lòng thử lại',
                                    onPress: Get.back,
                                    typeDialog: TypeDialog.FAILED);
                              },
                              cartRequest: CartAddedRequest(
                                  productId: product.productId),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
