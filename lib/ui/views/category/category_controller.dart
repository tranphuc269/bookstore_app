import 'package:get/get.dart';

import '../../../core/base/base_controller.dart';
import '../../../data/models/response/catalog/category/category_data.dart';
import '../../../data/sources/server/catalog/category/category_service.dart';

class CategoryController extends BaseController {
  CategoryController({required this.categoryService});

  final CategoryService categoryService;
  final categories = List<CategoryData>.empty(growable: true).obs;

  @override
  Future<void> onInit() async {
    isLoading(true);
    await Future.wait([_getCategories()]);
    isLoading(false);
    super.onInit();
  }

  Future<void> _getCategories() async {
    categories
      ..clear()
      ..addAll(
        await categoryService.getCategory(),
      );
  }
}
