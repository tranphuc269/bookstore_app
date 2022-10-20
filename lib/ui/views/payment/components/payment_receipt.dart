import 'package:flutter/material.dart';
import '../../../../core/app/app_constant.dart';
import '../../../../core/themes/app_style.dart';

class PaymentReceipt extends StatelessWidget {
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
              margin: const EdgeInsets.symmetric(vertical: AppConst.defaultMediumMargin),
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
                  '10,000đ',
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
                  '15,000đ',
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
                  '1,750,000đ',
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
