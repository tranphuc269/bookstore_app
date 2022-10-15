import 'package:get/get.dart';

import 'login_binding.dart';
import 'login_view.dart';

final loginRoute = [
  GetPage(
    name: LoginView.route,
    page: () => const LoginView(),
    binding: LoginBinding(),
    participatesInRootNavigator: true,
  ),
];