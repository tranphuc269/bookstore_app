import 'package:flutter/material.dart';
import '../../../../core/app/app_constant.dart';
import '../../../../core/helper/extension/double_extension.dart';
import '../../../../core/helper/extension/int_extension.dart';
import '../../../../core/themes/app_style.dart';
import '../../../../data/models/response/catalog/product/cart/cart_data.dart';

class PaymentReceipt extends StatelessWidget {
  const PaymentReceipt({required this.cart});

  final CartData cart;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Container(
        alignment: Alignment.center,
        margin: AppConst.kPaddingMediumDefault,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Giá trị đơn hàng',
              style: AppStyle.subtitle20.copyWith(fontWeight: FontWeight.bold),
            ),
            Container(
              color: Colors.black12,
              height: 1 / 2,
              margin: const EdgeInsets.symmetric(
                  vertical: AppConst.defaultMediumMargin),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Phí vận chuyển',
                  style:
                      AppStyle.subtitle16.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  10000.0.formatMoney(),
                  style: AppStyle.subtitle16,
                ),
              ],
            ),
            const SizedBox(
              height: AppConst.defaultVerySmallMargin,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Thuế (VAT)',
                  style:
                      AppStyle.subtitle16.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  (cart.totalPrice / 10).formatMoney(),
                  style: AppStyle.subtitle16,
                ),
              ],
            ),
            const SizedBox(
              height: AppConst.defaultVerySmallMargin,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Thành tiền',
                  style:
                      AppStyle.subtitle16.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  (cart.totalPrice * 1.1 + 10000).formatMoney(),
                  style: AppStyle.subtitle16,
                ),
              ],
            ),
            const SizedBox(
              height: AppConst.defaultVerySmallMargin,
            ),
          ],
        ),
      ),
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
