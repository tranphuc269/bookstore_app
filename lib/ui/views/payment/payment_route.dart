import 'package:get/get.dart';

import 'payment_binding.dart';
import 'payment_view.dart';
import 'screens/payment_status/payment_success.dart';

final paymentRoute = [
  GetPage(
    name: PaymentView.route,
    page: () => PaymentView(),
    binding: PaymentBinding(),
  ),
  GetPage(
    name: PaymentSuccessView.route,
    page: () => PaymentSuccessView(),
  ),
];
