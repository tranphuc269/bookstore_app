import 'package:get/get.dart';

abstract class BaseController extends GetxController {
  RxBool isLoading = false.obs;
  RxString errorMessage = ''.obs;
  RxBool isError = false.obs;

  void showLoading() {
    isLoading.toggle();
    isError.value = false;
    errorMessage.value = '';
  }
  Rx<bool> hideLoading() => isLoading.toggle();

  void showError(String message) {
    errorMessage.value = message;
    isError.value = true;
  }
}