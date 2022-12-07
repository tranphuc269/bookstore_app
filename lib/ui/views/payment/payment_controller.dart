import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/base/base_controller.dart';
import '../../../data/models/response/catalog/product/cart/cart_data.dart';
import '../../../data/models/response/order/order_request.dart';
import '../../../data/sources/server/order/cart/cart_service.dart';
import 'screens/payment_vnpay/payment_vnpay_view.dart';

class PaymentController extends BaseController {
  PaymentController({required this.cartService});

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

  Future<void> onPayment() async {
    final _createOrder = await cartService.createOrder(
        orderRequest: OrderRequest(
            billingAddressId: '888b5fb4-acc4-4ec2-8a71-884fe910bb4b',
            paymentType: PAYMENT_TYPE.VNPAY,
            shippingAddressId: '888b5fb4-acc4-4ec2-8a71-884fe910bb4b',
            information: 'Thanh toán đơn hàng'));
    await Get.toNamed(PaymentVnPayView.route,
        arguments: _createOrder!.data.paymentUrl!);
  }
}
