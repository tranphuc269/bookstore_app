import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../data/models/response/catalog/product/product_data.dart';
import '../../../../data/sources/server/catalog/product/product_service.dart';

enum ProductListType { GRID, LIST }

class ProductListController extends BaseController {
  ProductListController(
      {required this.type, required this.idList, required this.productService});

  final products = List<ProductData>.empty(growable: true).obs;

  late ProductListEnum type;
  late String idList;
  ProductService productService;

  final displayType = ProductListType.GRID.obs;
  @override
  Future<void> onInit() async {
    isLoading(true);
    await Future.wait([
      _getProducts(),
    ]);
    isLoading(false);
    super.onInit();
  }
  /// internal
  Future<void> _getProducts() async {
    products
      ..clear()
      ..addAll(
        await (type == ProductListEnum.CATEGORY
            ? productService.getProductByCategoryId(categoryId: idList)
            : productService.getProductByProducerId(producerId: idList)),
      );
  }

  void changeDisplayType() {
    if (displayType.value == ProductListType.GRID) {
      displayType(ProductListType.LIST);
    } else {
      displayType(ProductListType.GRID);
    }
  }
}

enum ProductListEnum { PRODUCER, CATEGORY }
