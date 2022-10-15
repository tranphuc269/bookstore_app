import 'package:get/get.dart';

import '../../../data/repositories/sample_feature/sample_feature_repository_impl.dart';
import '../../../data/sources/local/sample_feature/sample_feature_dao_impl.dart';
import '../../../data/sources/server/auth/auth_api_impl.dart';
import '../../../data/sources/server/sample_feature/sample_feature_api_impl.dart';
import '../auth/login/login_controller.dart';
import '../sample_feature/list/sample_feature_list_controller.dart';
import 'main_nav_controller.dart';


class MainNavBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainNavController());
    Get.lazyPut(() => LoginController(dataSource: AuthApiImpl()));
    Get.lazyPut(
          () => SampleFeatureListController(
        repository: SampleFeatureRepositoryImpl(
          apiService: SampleFeatureApiImpl(),
          dao: SampleFeatureDaoImpl(),
        ),
      ),
    );
  }
}