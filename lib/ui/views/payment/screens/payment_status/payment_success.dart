import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../../core/localization/language_const.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../../widgets/base_button.dart';

class PaymentSuccessView extends StatelessWidget {
  static const route = '/payment_success';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/success.png',
              width: 120,
            ),
            const SizedBox(
              height: AppConst.defaultMediumMargin*2,
            ),
            SizedBox(
              width: 320,
              child: Text(
                'You have successfully placed an order. We will call to verify the order. Do more than pay attention to the phone.',
                style: AppStyle.subtitle16.copyWith(
                  color: const Color(0xFF323232).withOpacity(0.54),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            BaseButton(
              text: International.returnShop.tr,
              margin: AppConst.kPaddingVeryLargeDefaultHorizontal,
              borderRadius: 32,
              onPressed: (){
                while(Navigator.canPop(context)){
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
