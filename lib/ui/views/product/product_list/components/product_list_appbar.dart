import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/localization/language_const.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../../widgets/back_widget.dart';
import '../product_list_controller.dart';

class ProductListAppBar extends AppBar {
  ProductListAppBar({required this.icon, required this.changeDisplay})
      : super(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: const BackWidget(),
          elevation: 0.2,
          title: RichText(
            text: TextSpan(
              text: International.recommendations.tr,
              style: AppStyle.subtitle20.copyWith(color: AppColors.baseDark),
              children: [
                TextSpan(
                  text: ' (82)',
                  style: AppStyle.subtitle16.copyWith(
                      color: const Color(0xFF323232).withOpacity(0.54)),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: changeDisplay,
              icon: icon,
            ),
          ],
        );
  Widget icon;
  Function() changeDisplay;
}
