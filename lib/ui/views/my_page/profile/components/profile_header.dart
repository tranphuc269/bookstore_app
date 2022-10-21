import 'package:flutter/material.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_style.dart';

class ProfileHeader extends AppBar {
  ProfileHeader()
      : super(
          backgroundColor: AppColors.white,
          elevation: 0.3,
          title: Text(
            'Profile',
            style: AppStyle.subtitle20.copyWith(color: AppColors.primary),
          ),
        );
}
