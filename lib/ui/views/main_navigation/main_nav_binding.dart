import 'package:get/get.dart';
import '../../../data/sources/server/auth/auth_api_impl.dart';
import '../auth/login/login_controller.dart';
import '../category/category_controller.dart';
import '../home/home_controller.dart';
import 'main_nav_controller.dart';


class MainNavBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainNavController());
    // Get.lazyPut(() => LoginController(dataSource: AuthApiImpl()));
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CategoryController());
  }
}