import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/localization/language_const.dart';
import '../../../../data/dummy/product_dummy.dart';
import '../../../widgets/base_button.dart';
import '../../../widgets/cart/cart_item_widget.dart';
import '../../payment/payment_view.dart';

class CartItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: AppConst.kPaddingMediumDefault,
      child: Column(
        children: [
          ...List.generate(
            ProductDummy.products.length,
            (index) => CartItemWidget(),
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
