import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../core/helper/dialog_helper.dart';
import '../../../../data/models/response/catalog/product/cart/cart_added_request.dart';
import '../../../../data/models/response/catalog/product/product_data.dart';
import '../../../../data/sources/server/catalog/product/product_service.dart';

class ProductDetailController extends BaseController {
  ProductDetailController({
    required this.productId,
    required this.productService,
  });

  final String productId;

  final ProductService productService;

  final productData = Rx<ProductData?>(null);

  @override
  Future<void> onInit() async {
    super.onInit();
    isLoading(true);
    await Future.wait([
      _getProduct(),
    ]);
    isLoading(false);
  }

  /// external
  Future<void> addToCart() async {
    Loading.show();
    await productService.addToCart(
      onSuccess: () {
        Loading.hide();
        AppDialog.show(
            message: 'Sản phẩm đã được thêm vào trong giỏ hàng',
            onPress: Get.back,
            typeDialog: TypeDialog.SUCCESS);
      },
      onFailure: () {
        Loading.hide();
        AppDialog.show(
            message: 'Có lỗi xảy ra, vui lòng thử lại',
            onPress: Get.back,
            typeDialog: TypeDialog.FAILED);
      },
      cartRequest: CartAddedRequest(productId: productId, quantity: 1),
    );
  }

  /// internal
  Future<void> _getProduct() async {
    productData.value = await productService.getSingleProduct(productId: productId);
  }
}
