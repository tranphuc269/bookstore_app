import 'package:flutter/material.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../data/dummy/product_dummy.dart';
import '../../../widgets/cart/cart_item_widget.dart';

class CartItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: AppConst.kPaddingMediumDefault,
      child: Column(
        children: List.generate(
          ProductDummy.products.length,
          (index) => CartItemWidget(),
        ),
      ),
    );
  }
}
