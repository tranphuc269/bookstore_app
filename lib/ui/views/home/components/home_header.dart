import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/localization/language_const.dart';
import '../../../../core/themes/app_style.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: AppConst.kPaddingMediumDefault,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/ic_search.png',
            width: 24,
          ),
          Text(
            International.homeDiscovery.tr,
            style: AppStyle.subtitle24,
          ),
          Image.asset(
            'assets/icons/ic_cart.png',
            width: 24,
          ),
        ],
      ),
    );
  }
}
