import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app/app_constant.dart';
import '../../../core/helper/extension/double_extension.dart';
import '../../../core/themes/app_style.dart';
import '../../../data/dummy/product_dummy.dart';
import '../../../data/models/response/catalog/product/cart/cart_item_data.dart';
import '../../views/product/product_detail/product_detail_view.dart';
import '../cached_image.dart';

class PaymentItemWidget extends StatelessWidget {
  const PaymentItemWidget({required this.cart});

  final CartItemData cart;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 160,
      margin: const EdgeInsets.only(bottom: AppConst.defaultMediumMargin),
      child: Row(
        children: [
          GestureDetector(
            child: CachedImage(
              url: cart.images.first,
              borderRadius: BorderRadius.circular(8),
            ),
            onTap: () {
              Get.toNamed(ProductDetailView.route, arguments: cart.productId);
            },
          ),
          const SizedBox(
            width: AppConst.defaultMediumMargin,
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppConst.defaultMediumMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 160, child: Text(
                  cart.productName,
                  style: AppStyle.subtitle18.copyWith(
                    color: const Color(0xFF36596A),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),),
                const SizedBox(
                  height: AppConst.defaultSmallMargin,
                ),
                Text(
                  'SKU : ACGF.V5PU.AEAA',
                  style: AppStyle.subtitle14.copyWith(
                    color: const Color(0xFF323232).withOpacity(0.54),
                  ),
                ),
                const SizedBox(
                  height: AppConst.defaultSmallMargin,
                ),
                RichText(
                  text: TextSpan(
                    text: cart.itemPrice.formatMoney(),
                    style: AppStyle.subtitle16
                        .copyWith(color: const Color(0xFFFF8236)),
                  ),
                ),
                const SizedBox(
                  height: AppConst.defaultSmallMargin,
                ),
                Text(
                  'Số lượng : ${cart.quantity}',
                  style: AppStyle.subtitle14.copyWith(
                      color: const Color(0xFF323232),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
