import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_style.dart';
import '../../../widgets/back_widget.dart';

class PaymentHeader extends AppBar {
  PaymentHeader()
      : super(
          leading: const BackWidget(),
          backgroundColor: AppColors.white,
          elevation: 0.25,
          title: Text(
            'Payment',
            style: AppStyle.subtitle20.copyWith(color: AppColors.primary),
          ),
        );
}
