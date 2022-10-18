import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';

enum ProductListType { GRID, LIST }

class ProductListController extends BaseController {
  final displayType = ProductListType.GRID.obs;

  void changeDisplayType() {
    if (displayType.value == ProductListType.GRID) {
      displayType(ProductListType.LIST);
    } else {
      displayType(ProductListType.GRID);
    }
  }
}
