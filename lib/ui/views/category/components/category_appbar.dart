import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_style.dart';

class CategoryAppBar extends AppBar {
  CategoryAppBar()
      : super(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0.5,
          title: Text(
            'Categories',
            style: AppStyle.subtitle20.copyWith(color: AppColors.primary),
          ),
        );
}
