import 'package:get/get.dart';

import 'edit_profile_controller.dart';

class EditProfileViewBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => EditProfileController());
  }

}