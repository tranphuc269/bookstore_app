import '../views/auth/intro/intro_route.dart';
import '../views/auth/login/login_route.dart';
import '../views/auth/splash/splash_route.dart';
import '../views/auth/splash/splash_view.dart';
import '../views/home/home_route.dart';
import '../views/main_navigation/main_nav_route.dart';
import '../views/product/product_detail/product_detail_route.dart';
import '../views/product/product_list/product_list_route.dart';
import '../views/sample_feature/detail/sample_feature_detail_route.dart';
import '../views/sample_feature/list/sample_feature_list_route.dart';

class AppPages {
  static const initial = SplashView.route;

  static final routes = [
    ...splashRoute,
    ...introRoute,
    ...loginRoute,
    ...mainNavRoute,
    ...sampleFeatureRoute,
    ...homeRoute,
    ...sampleFeatureDetailPage,
    ...productRoute,
    ...productListRoute,
  ];
}
