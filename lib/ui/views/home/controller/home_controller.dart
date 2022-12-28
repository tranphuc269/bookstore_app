import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../data/models/response/catalog/product/product_data.dart';
import '../../../../data/sources/server/catalog/product/product_service.dart';

class HomeController extends BaseController {
  HomeController({required this.productService});

  final ProductService productService;

  final products = List<ProductData>.empty(growable: true).obs;

  @override
  Future<void> onInit() async {
    isLoading(true);

    await _initialize();
    super.onInit();

    isLoading(false);
  }

  Future<void> _initialize() async {
    await Future.wait([getProducts()]);
  }

  Future<void> getProducts() async {
    products
      ..clear()
      ..addAll(
          await productService.getProductBySortPageSize(page: 0, size: 10));
    print('products : ${products.length}');
  }
}
