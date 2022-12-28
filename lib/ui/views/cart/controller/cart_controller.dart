import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../data/models/response/catalog/product/cart/cart_data.dart';
import '../../../../data/sources/server/order/cart/cart_service.dart';

class CartController extends BaseController {
  CartController({required this.cartService});

  final CartService cartService;

  final cartData = Rx<CartData?>(null);

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    isLoading(true);
    await _initialize();
    isLoading(false);
    super.onInit();
  }

  Future<void> _initialize() async {
    await Future.wait([getCart()]);
  }

  Future<void> getCart() async {
    cartData.value = await cartService.getMyCart();
  }
}
