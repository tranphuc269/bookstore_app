import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/localization/language_const.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_style.dart';

class CategoryAppBar extends AppBar {
  CategoryAppBar()
      : super(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0.5,
          title: Text(
            International.categories.tr,
            style: AppStyle.subtitle20.copyWith(color: AppColors.primary),
          ),
        );
}
