import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_style.dart';
import '../../../widgets/back_widget.dart';

class AddressAppBar extends AppBar {
  AddressAppBar()
      : super(
            leading: const BackWidget(),
            backgroundColor: AppColors.white,
            elevation: 0.5,
            title: Text(
              'Address',
              style: AppStyle.subtitle20.copyWith(color: AppColors.primary),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: AppColors.systemBlack,
                ),
              )
            ]);
}
