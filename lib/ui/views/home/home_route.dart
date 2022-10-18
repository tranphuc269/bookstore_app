import 'package:get/get.dart';

import 'home_binding.dart';
import 'home_view.dart';

final homeRoute = [
  GetPage(
    name: HomeView.route,
    page: () => HomeView(),
    binding: HomeBinding(),
    participatesInRootNavigator: true,
  ),
];