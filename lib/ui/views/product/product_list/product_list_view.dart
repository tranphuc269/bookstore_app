import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/base/stateless_view_base.dart';
import '../../../widgets/base/base_view.dart';
import 'components/product_list_appbar.dart';
import 'components/product_list_body.dart';
import 'product_list_controller.dart';

class ProductListView extends StateLessViewBase<ProductListController> {
  static const route = '/product_list';

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    return Obx(
      () => BaseView(
        loadingEnabled: controller.isLoading.isTrue,
        errorEnabled: controller.isError.value,
        onRetry: controller.onInit,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ProductListBody(),
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    return ProductListAppBar();
  }
}