import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_style.dart';

class NotificationHeader extends AppBar {
  NotificationHeader()
      : super(
          backgroundColor: AppColors.white,
          elevation: 0.5,
          title: Text(
            'Notification',
            style: AppStyle.subtitle20.copyWith(color: AppColors.primary),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                size: 22,
                color: AppColors.subtitleText,
              ),
            ),
          ],
        );
}
