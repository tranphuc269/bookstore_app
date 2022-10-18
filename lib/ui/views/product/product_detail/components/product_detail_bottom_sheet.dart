import 'package:flutter/material.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../../core/helper/dialog_helper.dart';
import '../../../../widgets/base_button.dart';

class ProductDetailBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: MediaQuery.of(context).viewPadding,
      child: BaseButton(
        borderRadius: 24,
        text: 'Add To Cart',
        onPressed: () {
          Loading.show(dismissible: true);
        },
      ),
      height: 60,
      padding: AppConst.kPaddingLargeDefaultHorizontal,
    );
  }
}
