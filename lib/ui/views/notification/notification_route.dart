import 'package:get/get.dart';

import 'notification_binding.dart';
import 'notification_view.dart';

final notificationRoute = [
  GetPage(
    name: NotificationView.route,
    page: () => NotificationView(),
    binding: NotificationBinding(),
  ),
];
