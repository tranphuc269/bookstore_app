import 'product_detail_view.dart';
import 'package:get/get.dart';
import 'product_detail_binding.dart';


final productRoute = [
  GetPage(
    name: ProductDetailView.route,
    page: () => ProductDetailView(),
    binding: ProductDetailBinding(),
    participatesInRootNavigator: true,
  ),
];