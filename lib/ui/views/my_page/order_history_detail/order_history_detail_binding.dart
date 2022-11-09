import 'package:get/get.dart';

import 'order_history_detail_controller.dart';

class OrderHistoryDetailBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => OrderHistoryDetailController());
  }

}