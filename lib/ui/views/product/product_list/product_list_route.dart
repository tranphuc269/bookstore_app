
import 'package:get/get.dart';

import 'product_list_binding.dart';
import 'product_list_view.dart';

final productListRoute = [
  GetPage(
    name: ProductListView.route,
    page: () => ProductListView(),
    binding: ProductListBinding(),
    participatesInRootNavigator: true,
  ),
];