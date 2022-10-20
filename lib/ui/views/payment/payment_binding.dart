import 'package:get/get.dart';

import 'payment_controller.dart';

class PaymentBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => PaymentController());
  }

}