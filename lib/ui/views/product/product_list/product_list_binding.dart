import 'package:get/get.dart';

import 'product_list_controller.dart';

class ProductListBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ProductListController());
  }
}
