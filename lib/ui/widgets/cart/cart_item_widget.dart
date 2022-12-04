import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../../core/app/app_constant.dart';
import '../../../core/helper/extension/double_extension.dart';
import '../../../core/themes/app_style.dart';
import '../../../data/dummy/product_dummy.dart';
import '../../../data/models/response/catalog/product/cart/cart_item_data.dart';
import '../../views/product/product_detail/product_detail_view.dart';
import '../cached_image.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({required this.cart});

  final CartItemData cart;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 160,
      margin: const EdgeInsets.only(bottom: AppConst.defaultMediumMargin),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: GestureDetector(
              child: CachedImage(
                url: cart.images.first,
                borderRadius: BorderRadius.circular(8),
              ),
              onTap: () {
                Get.toNamed(ProductDetailView.route, arguments: cart.productId);
              },
            ),
          ),
          Padding(
            padding: AppConst.kPaddingMediumDefault,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 120,
                  child: Text(
                    cart.productName,
                    style: AppStyle.subtitle18.copyWith(
                      color: const Color(0xFF36596A),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppConst.defaultMediumMargin,
                ),
                RichText(
                  text: TextSpan(
                    text: cart.itemPrice.formatMoney(),
                    style: AppStyle.subtitle16
                        .copyWith(color: const Color(0xFFFF8236)),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: AppConst.kPaddingMediumDefaultVertical,
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Ionicons.trash_outline)),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: const Icon(
                            Ionicons.remove_outline,
                            size: 18,
                          ),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            cart.quantity.toString(),
                            style: AppStyle.subtitle16,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: const Icon(
                            Ionicons.add_outline,
                            size: 18,
                          ),
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
