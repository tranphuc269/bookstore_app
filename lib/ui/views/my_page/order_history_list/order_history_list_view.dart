import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/base/stateless_view_base.dart';
import '../../../widgets/base/base_view.dart';
import 'component/order_history_list_appbar.dart';
import 'component/order_history_item.dart';
import 'order_history_list_controller.dart';

class OrderHistoryListView extends StateLessViewBase<OrderHistoryListController> {
  static const route = '/order_history';

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    return Obx(
      () => BaseView(
        loadingEnabled: controller.isLoading.isTrue,
        errorEnabled: controller.isError.value,
        onRetry: controller.onInit,
        isConnectNetwork: controller.isConnectNetwork.value,
        child: Container(
          padding: AppConst.kPaddingSmallDefault,
          child: Column(
            children: List.generate(4, (index) => OrderHistoryItem()),
          ),
        ),
      ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    return OrderHistoryAppBar();
  }
}
