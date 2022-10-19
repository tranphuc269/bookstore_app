import 'package:get/get.dart';

import 'cart_binding.dart';
import 'cart_view.dart';

final cartRoute = [
  GetPage(
    name: CartView.route,
    page: () => CartView(),
    binding: CartBinding(),
  ),
];
