import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/auth_manager/auth_manager.dart';
import '../../../../core/database/secure_storage/secure_storage_manager.dart';
import '../../../../core/helper/dialog_helper.dart';
import '../../../../data/sources/server/auth/auth_api.dart';
import '../../main_navigation/main_nav_view.dart';

class LoginController extends GetxController {
  LoginController({required this.dataSource});
  final AuthApi dataSource;

  final formKey = GlobalKey<FormState>();
  final _secure = Get.find<SecureStorageManager>();
  final passController = TextEditingController();
  final userNameController = TextEditingController();
  RxBool isHiddenPassword = true.obs;
  Rx<bool> hidePassword() => isHiddenPassword.toggle();

  bool validateField() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      return true;
    }
    return false;
  }

  Future<void> login() async {

    if (validateField()) {
      try {
        unawaited(Loading.show());
        await dataSource.login(
            userName: userNameController.text,
            password: passController.text).then((res) async {
          bypassLogin(token: res.access_token);
          Loading.hide();
          await Get.offAllNamed(MainNavView.route);
        });
      } catch (err) {
        Loading.hide();
        AppDialog.show(
          typeDialog: TypeDialog.FAILED,
          message: err.toString(),
          onPress: () => AppDialog.close(),
        );
      }
    }
  }

  void bypassLogin({required String token}) async {
    await SecureStorageManager.find.setToken(value: token);
    await AuthManager.find.setAuth();
  }
}