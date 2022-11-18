import 'package:flutter/material.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/themes/app_style.dart';
import '../../../../data/models/response/catalog/product/cart/cart_item_data.dart';
import '../../../widgets/payment/payment_item_widget.dart';

class PaymentCart extends StatelessWidget {
  const PaymentCart({required this.cartItems});

  final List<CartItemData> cartItems;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        margin: AppConst.kPaddingMediumDefault,
        padding: const EdgeInsets.only(top: AppConst.defaultMediumMargin),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Giỏ hàng',
                  style: AppStyle.subtitle20,
                ),
                Text(
                  'Số lượng : 1',
                  style: AppStyle.subtitle16,
                ),
              ],
            ),
            Container(
              height: 0.5,
              margin: AppConst.kPaddingMediumDefaultVertical,
              color: Colors.black26,
            ),
            ...List.generate(cartItems.length, (index) => PaymentItemWidget(cart : cartItems[index])),
          ],
        ),
      ),
    );
  }
}
