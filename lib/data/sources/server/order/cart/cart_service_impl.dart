import '../../../../../core/network/api_request.dart';
import '../../../../models/response/catalog/product/cart/cart_data.dart';
import '../../../../models/response/catalog/product/cart/cart_response.dart';
import '../../../../models/response/order/create_order_response.dart';
import '../../../../models/response/order/order_request.dart';
import 'cart_service.dart';

class CartServiceImpl extends CartService {
  @override
  Future<CartData> getMyCart() async {
    // TODO: implement getMyCart
    const url = '/order-service/cart';
    final _res = await sendRequest(
      url: url,
      requestMethod: RequestMethod.GET,
      useToken: true,
    );
    final CartResponse cart = CartResponse.fromJson(_res.data);
    return cart.data;
  }

  @override
  Future<CreateOrderResponse?> createOrder(
      {required OrderRequest orderRequest}) async {
    // TODO: implement createOrder
    const url = '/order-service/order';
    // TODO: implement getProductBySortPageSize
    final _res = await sendRequest(
        url: url,
        requestMethod: RequestMethod.POST,
        useToken: true,
        body: orderRequest.toJson());
    return CreateOrderResponse.fromJson(_res.data);
  }

  @override
  Future<void> removeItemFromCart(
      {required String itemId,
      required Function() onSuccess,
      required Function() onFailure}) async {
    // TODO: implement removeItemFromCart
    try {
      final url = '/order-service/cart/cartItem/$itemId';
      await sendRequest(
        url: url,
        requestMethod: RequestMethod.DELETE,
        useToken: true,
      );
      onSuccess.call();
    } on Exception {
      onFailure.call();
    }
  }
}
