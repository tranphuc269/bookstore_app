import 'package:get/get.dart';

import '../../../data/sources/server/auth/auth_api_impl.dart';
import '../../../data/sources/server/catalog/banner/banner_api_impl.dart';
import '../../../data/sources/server/catalog/category/category_service_impl.dart';
import '../../../data/sources/server/catalog/producer/producer_service_impl.dart';
import '../auth/login/login_controller.dart';
import '../category/category_controller.dart';
import '../home/home_controller.dart';
import '../my_page/profile/profile_controller.dart';
import '../notification/notification_controller.dart';
import 'main_nav_controller.dart';

class MainNavBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainNavController());
    // Get.lazyPut(() => LoginController(dataSource: AuthApiImpl()));
    Get.lazyPut(() => HomeController(
        bannerService: Get.find<BannerServiceImpl>(),
        categoryService: Get.find<CategoryServiceImpl>(), producerService: Get.find<ProducerServiceImpl>()));
    Get.lazyPut(() => CategoryController());
    Get.lazyPut(() => NotificationController());
    Get.lazyPut(() => ProfileController());
  }
}
