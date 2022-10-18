import 'package:flutter/material.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../widgets/back_widget.dart';

class ProductDetailAppBar extends AppBar {
  ProductDetailAppBar()
      : super(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: const BackWidget(),
          elevation: 0,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: AppColors.systemBlack,
              ),
            ),
          ],
        );
}
