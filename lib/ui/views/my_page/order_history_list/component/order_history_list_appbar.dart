import 'package:flutter/material.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../../widgets/back_widget.dart';

class OrderHistoryAppBar extends AppBar {
  OrderHistoryAppBar()
      : super(
          backgroundColor: AppColors.white,
          elevation: 0.3,
          leading: const BackWidget(),
          title: Text(
            'Order history',
            style: AppStyle.subtitle20.copyWith(color: AppColors.primary),
          ),
        );
}
