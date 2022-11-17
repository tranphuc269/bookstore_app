import 'package:get/get.dart';

import '../../../core/base/base_controller.dart';
import '../../../data/models/response/catalog/banner/banner_data.dart';
import '../../../data/models/response/catalog/category/category_data.dart';
import '../../../data/models/response/producer/producer_data.dart';
import '../../../data/sources/server/catalog/banner/banner_api.dart';
import '../../../data/sources/server/catalog/category/category_service.dart';
import '../../../data/sources/server/catalog/producer/producer_service.dart';

class HomeController extends BaseController {
  HomeController(
      {required this.bannerService,
      required this.categoryService,
      required this.producerService});

  final BannerService bannerService;
  final CategoryService categoryService;
  final ProducerService producerService;

  final banners = List<BannerData>.empty(growable: true).obs;
  final categories = List<CategoryData>.empty(growable: true).obs;
  final producers = List<ProducerData>.empty(growable: true).obs;

  @override
  Future<void> onInit() async {
    isLoading(true);
    await Future.wait([
      _getBanner(),
      _getCategories(),
      _getProducer(),
    ]);
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
}
