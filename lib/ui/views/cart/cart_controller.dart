import 'package:get/get.dart';

import '../../../core/base/base_controller.dart';
import '../../../data/models/response/catalog/product/cart/cart_data.dart';
import '../../../data/sources/server/catalog/cart/cart_service.dart';

class CartController extends BaseController {
  CartController({required this.cartService});

  final CartService cartService;

  final cartData = Rx<CartData?>(null);

  @override
  Future<void> onInit() async {
    isLoading(true);
    await Future.wait([
      _getCart(),
    ]);
    isLoading(false);
    super.onInit();
  }

  Future<void> _getCart() async {
    cartData(await cartService.getMyCart());
  }
}
