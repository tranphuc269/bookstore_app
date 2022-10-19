import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/localization/language_const.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_style.dart';
import '../../../widgets/base_button.dart';

class CartEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Image.asset('assets/images/cart_empty.png'),
        const SizedBox(
          height: AppConst.defaultMediumMargin,
        ),
        Text(
          'Your cart is empty',
          style: AppStyle.subtitle20.copyWith(color: const Color(0xFF323232)),
        ),
        const SizedBox(
          height: AppConst.defaultMediumMargin,
        ),
        Padding(
          padding: AppConst.kPaddingVeryLargeDefaultHorizontal,
          child: Text(
            'Take a look at the catalog and select products to taste.',
            style: AppStyle.subtitle16.copyWith(
              color: const Color(0xFF323232).withOpacity(0.54),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: AppConst.defaultLargeMargin,
        ),
        Padding(
          padding: AppConst.kPaddingVeryLargeDefaultHorizontal,
          child: BaseButton(
            onPressed: () {
              while(Navigator.canPop(context)){
                Navigator.of(context).pop();
              }
            },
            text: International.returnShop.tr,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
