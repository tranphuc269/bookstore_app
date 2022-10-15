import 'package:get/get.dart';
import '../../../../data/sources/server/auth/auth_api_impl.dart';
import 'login_controller.dart';


class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(dataSource: AuthApiImpl()));
  }
}