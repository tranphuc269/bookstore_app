import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/base/stateless_view_base.dart';
import '../../widgets/base/base_view.dart';
import 'components/notification_header.dart';
import 'components/notification_item.dart';
import 'components/notification_item_header.dart';
import 'notification_controller.dart';

class NotificationView extends StateLessViewBase<NotificationController> {
  static const route = '/notification';

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
          child: Column(
            children: [
              NotificationItemHeader(),
              NotificationItemComponent(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    return NotificationHeader();
  }
}
