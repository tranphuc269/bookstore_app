import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/localization/language_const.dart';
import '../../../../data/models/response/catalog/product/cart/cart_item_data.dart';
import '../../../widgets/base_button.dart';
import '../../../widgets/cart/cart_item_widget.dart';
import '../../payment/payment_view.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({required this.cartItems});

  final List<CartItemData> cartItems;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: AppConst.kPaddingMediumDefault,
      child: Column(
        children: [
          ...List.generate(
            cartItems.length,
            (index) => CartItemWidget(cart: cartItems[index]),
          ),
          BaseButton(
            text: International.payment.tr,
            onPressed: () => Get.toNamed(PaymentView.route),
          ),
        ],
      ),
    );
  }
}
