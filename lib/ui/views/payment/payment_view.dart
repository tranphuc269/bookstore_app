import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app/app_constant.dart';
import '../../../core/base/stateless_view_base.dart';
import '../../../core/localization/language_const.dart';
import '../../widgets/base/base_view.dart';
import '../../widgets/base_button.dart';
import 'components/payment_address.dart';
import 'components/payment_cart.dart';
import 'components/payment_header.dart';
import 'components/payment_method.dart';
import 'components/payment_receipt.dart';
import 'payment_controller.dart';
import 'screens/payment_status/payment_success.dart';

class PaymentView extends StateLessViewBase<PaymentController> {
  static const route = '/payment';

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    return Obx(
      () => BaseView(
        loadingEnabled: controller.isLoading.isTrue,
        errorEnabled: controller.isError.value,
        onRetry: controller.onInit,
        isConnectNetwork: controller.isConnectNetwork.value,
        child: Padding(
          padding: AppConst.kPaddingMediumDefault,
          child: Column(
            children: [
              PaymentAddress(),
              const SizedBox(
                height: AppConst.defaultMediumMargin,
              ),
              PaymentCart(
                cartItems: viewModel.cartData.value?.data ?? [],
              ),
              const SizedBox(
                height: AppConst.defaultMediumMargin,
              ),
              PaymentMethod(),
              const SizedBox(
                height: AppConst.defaultMediumMargin,
              ),
              if(viewModel.cartData.value != null)PaymentReceipt(cart: viewModel.cartData.value!,),
              const SizedBox(
                height: AppConst.defaultMediumMargin,
              ),
              BaseButton(
                text: International.payment.tr,
                onPressed: () {
                  viewModel.onPayment();
                  // Get.toNamed(PaymentSuccessView.route);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    return PaymentHeader();
  }
}
