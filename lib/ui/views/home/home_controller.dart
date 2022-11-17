import 'package:get/get.dart';

import '../../../core/base/base_controller.dart';
import '../../../data/models/response/catalog/banner/banner_data.dart';
import '../../../data/models/response/catalog/category/category_data.dart';
import '../../../data/sources/server/catalog/banner/banner_api.dart';
import '../../../data/sources/server/catalog/category/category_service.dart';

class HomeController extends BaseController {
  HomeController({required this.bannerService, required this.categoryService});

  final BannerService bannerService;
  final CategoryService categoryService;

  final banners = List<BannerData>.empty(growable: true).obs;
  final categories = List<CategoryData>.empty(growable: true).obs;

  @override
  Future<void> onInit() async {
    isLoading(true);
    await Future.wait([
      _getBanner(),
      _getCategories()
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
}
