import 'package:get/get.dart';

import '../../../data/sources/server/catalog/category/category_service_impl.dart';
import 'category_controller.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() =>
        CategoryController(categoryService: Get.find<CategoryServiceImpl>()));
  }
}
