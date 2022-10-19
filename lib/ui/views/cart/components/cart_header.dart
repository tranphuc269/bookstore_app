import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_style.dart';
import '../../../widgets/back_widget.dart';

class CartHeader extends AppBar {
  CartHeader()
      : super(
          leading: const BackWidget(),
          backgroundColor: AppColors.white,
          elevation: 0,
          title: Text(
            'Cart',
            style: AppStyle.subtitle20.copyWith(color: AppColors.primary),
          ),
        );
}
