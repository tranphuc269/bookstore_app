import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/base/stateless_view_base.dart';
import '../../../widgets/base/base_view.dart';
import 'components/order_history_detail_appbar.dart';
import 'components/order_history_detail_information.dart';
import 'components/order_history_detail_status.dart';
import 'order_history_detail_controller.dart';

class OrderHistoryDetailView
    extends StateLessViewBase<OrderHistoryDetailController> {
  static const route = '/order_history_detail';

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
          height: MediaQuery.of(context).size.height,
          color: const Color(0xFF828282).withOpacity(0.1),
          child: Column(
            children: [
              OrderHistoryDetailInformation(),
              Expanded(child: OrderHistoryDetailStatus()),
            ],
          ),
        ),
      ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    return OrderHistoryDetailAppBar();
  }
}
