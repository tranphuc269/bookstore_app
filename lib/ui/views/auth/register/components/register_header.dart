import 'package:flutter/material.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../../widgets/back_widget.dart';

class RegisterHeader extends AppBar {
  RegisterHeader()
      : super(
          leading: const BackWidget(),
          backgroundColor: AppColors.white,
          elevation: 0.5,
          title: Text(
            'Register',
            style: AppStyle.subtitle20.copyWith(color: AppColors.primary),
          ),
        );
}
