import 'package:get/get.dart';

import '../../../data/sources/server/catalog/cart/cart_service_impl.dart';
import 'cart_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CartController(cartService: Get.find<CartServiceImpl>()));
  }
}
