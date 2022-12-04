import 'package:get/get.dart';

import '../../../core/base/base_controller.dart';
import '../../../data/models/response/catalog/banner/banner_data.dart';
import '../../../data/models/response/catalog/category/category_data.dart';
import '../../../data/models/response/catalog/product/product_data.dart';
import '../../../data/models/response/producer/producer_data.dart';
import '../../../data/sources/server/catalog/banner/banner_api.dart';
import '../../../data/sources/server/catalog/category/category_service.dart';
import '../../../data/sources/server/catalog/producer/producer_service.dart';
import '../../../data/sources/server/catalog/product/product_service.dart';

class HomeController extends BaseController {
  HomeController(
      {required this.bannerService,
      required this.categoryService,
      required this.producerService,
      required this.productService});

  final BannerService bannerService;
  final CategoryService categoryService;
  final ProducerService producerService;
  final ProductService productService;

  final banners = List<BannerData>.empty(growable: true).obs;
  final categories = List<CategoryData>.empty(growable: true).obs;
  final producers = List<ProducerData>.empty(growable: true).obs;
  final products = List<ProductData>.empty(growable: true).obs;

  @override
  Future<void> onInit() async {
    isLoading(true);
    await Future.wait(
        [_getBanner(), _getCategories(), _getProducer(), _getProduct()]);
    isLoading(false);
    super.onInit();
  }

  Future<void> _getBanner() async {
    banners
      ..clear()
      ..addAll(await bannerService.getAllBanner());
  }

  Future<void> _getCategories() async {
    categories
      ..clear()
      ..addAll(
        await categoryService.getCategory(),
      );
  }

  Future<void> _getProducer() async {
    producers
      ..clear()
      ..addAll(
        await producerService.getAllProducer(),
      );
  }

  Future<void> _getProduct() async {
    products
      ..clear()
      ..addAll(
        await productService.getProductBySortPageSize(
            sort: 'productName,asc', page: 0, size: 10),
      );
  }
}
