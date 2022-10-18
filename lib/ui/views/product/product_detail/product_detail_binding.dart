import 'package:get/get.dart';

import 'product_detail_controller.dart';

class ProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => ProductDetailController(),
      tag: Get.arguments ?? '',
    );
  }
}
