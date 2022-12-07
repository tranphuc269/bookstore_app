import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../../widgets/back_widget.dart';
import 'package:flutter/material.dart';

import '../payment_status/payment_success.dart';

class PaymentVnPayView extends StatelessWidget {
   PaymentVnPayView({required this.url});

  static const route = '/payment_vnpay';

   String url;

  InAppWebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: const BackWidget(),
        backgroundColor: AppColors.white,
        elevation: 0.25,
        title: Text(
          'Thanh toán',
          style: AppStyle.subtitle20.copyWith(color: AppColors.primary),
        ),
      ),
      body: InAppWebView(
        onWebViewCreated: (controller) async {
          webViewController = controller;
          print(await controller.getUrl());
        },
        onLoadStart: (controller, uri){
          if(uri?.path.contains('success') ?? false){
            Get.toNamed(PaymentSuccessView.route);
          }
        },
        initialUrlRequest: URLRequest(url: Uri.parse(url)),
      ),
    );
  }
}
