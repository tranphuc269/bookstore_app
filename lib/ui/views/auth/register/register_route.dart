import 'package:get/get.dart';

import 'register_binding.dart';
import 'register_view.dart';

final registerRoute = [
  GetPage(
    name: RegisterView.route,
    page: () => RegisterView(),
    binding: RegisterBinding(),
    participatesInRootNavigator: true,
  ),
];
