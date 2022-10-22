import 'package:get/get.dart';

import 'order_history_list_controller.dart';

class OrderHistoryListBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => OrderHistoryListController());
  }
}