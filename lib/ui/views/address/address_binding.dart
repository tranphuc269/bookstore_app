import 'package:get/get.dart';

import 'address_controller.dart';

class AddressBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AddressController());
  }
}