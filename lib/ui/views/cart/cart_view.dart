import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/base/stateless_view_base.dart';
import '../../widgets/base/base_view.dart';
import 'cart_controller.dart';
import 'components/cart_header.dart';
import 'components/cart_item_list.dart';

class CartView extends StateLessViewBase<CartController> {
  static const route = '/cart';

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    return Obx(
      () => BaseView(
        loadingEnabled: controller.isLoading.isTrue,
        errorEnabled: controller.isError.value,
        onRetry: controller.onInit,
        isConnectNetwork: controller.isConnectNetwork.value,
        child: CartItemList(),
      ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    return CartHeader();
  }



}
