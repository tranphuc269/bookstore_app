import 'package:get/get.dart';

import 'category_binding.dart';
import 'category_view.dart';

final categoryRoute = [
  GetPage(
    name: CategoryView.route,
    page: () => CategoryView(),
    binding: CategoryBinding(),
    participatesInRootNavigator: true,
  ),
];
