import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';

class RegisterController extends BaseController{

  final formKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final passController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  RxBool isHiddenPassword = true.obs;
  Rx<bool> hidePassword() => isHiddenPassword.toggle();

  bool validateField() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      return true;
    }
    return false;
  }

  Future<void> register() async {
    if(validateField()){

    }
  }
}