import 'package:get/get.dart';

import '../../../../data/sources/server/product/product_service_impl.dart';
import 'product_detail_controller.dart';

class ProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => ProductDetailController(
          productId: Get.arguments,
          productService: Get.find<ProductServiceImpl>()),
      // tag: Get.arguments ?? '',
    );
  }
}
