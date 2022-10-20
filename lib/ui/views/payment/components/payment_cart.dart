import 'package:flutter/material.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/themes/app_style.dart';
import '../../../../data/dummy/product_dummy.dart';
import '../../../widgets/payment/payment_item_widget.dart';
import '../../../widgets/preview_producer_widget/preview_producer_widget.dart';
import '../../../widgets/product/product_widget.dart';

class PaymentCart extends StatelessWidget {
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
            ...List.generate(
                2,
                (index) =>
                    PaymentItemWidget()),
          ],
        ),
      ),
    );
  }
}
