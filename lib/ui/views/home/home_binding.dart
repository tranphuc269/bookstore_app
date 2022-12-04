import 'package:get/get.dart';

import '../../../data/sources/server/catalog/banner/banner_api_impl.dart';
import '../../../data/sources/server/catalog/category/category_service_impl.dart';
import '../../../data/sources/server/catalog/producer/producer_service_impl.dart';
import '../../../data/sources/server/catalog/product/product_service_impl.dart';
import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
          bannerService: Get.find<BannerServiceImpl>(),
          categoryService: Get.find<CategoryServiceImpl>(),
          producerService: Get.find<ProducerServiceImpl>(),
          productService: Get.find<ProductServiceImpl>()),
    );
  }
}
