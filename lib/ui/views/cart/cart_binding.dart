import 'package:get/get.dart';

import 'cart_controller.dart';

class CartBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CartController());
  }
}