import 'package:flutter/material.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_style.dart';
import '../../../widgets/cached_image.dart';
import '../../../widgets/payment/payment_method_widget.dart';

class PaymentMethod extends StatelessWidget{
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
              'Phương thức thanh toán',
              style: AppStyle.subtitle20,
            ),
            const SizedBox(height: AppConst.defaultSmallMargin,),
            const PaymentMethodElement(isChecked: true, name: 'Banking Mobile(VNPAY)',),
            const PaymentMethodElement(isChecked: false, name: 'Chuyển khoản qua Ngân Hàng',),
            const PaymentMethodElement(isChecked: false, name: 'Thanh toán khi nhận hàng(COD)',),
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

