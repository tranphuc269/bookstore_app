import 'package:get/get.dart';
import '../../../../data/sources/server/catalog/product/product_service_impl.dart';
import 'product_list_controller.dart';

class ProductListBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => ProductListController(
        type: Get.arguments[1],
        idList: Get.arguments[0],
        productService: Get.find<ProductServiceImpl>(),
      ),
    );
  }
}
