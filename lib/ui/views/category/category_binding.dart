import 'package:get/get.dart';

import 'category_controller.dart';

class CategoryBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CategoryController());
  }
}