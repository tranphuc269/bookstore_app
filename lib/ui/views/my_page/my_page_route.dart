import 'package:get/get.dart';

import 'order_history_detail/order_history_detail_binding.dart';
import 'order_history_detail/order_history_detail_view.dart';
import 'order_history_list/order_history_list_binding.dart';
import 'order_history_list/order_history_list_view.dart';

final myPageRoute = [
  GetPage(
    name: OrderHistoryListView.route,
    page: () => OrderHistoryListView(),
    binding: OrderHistoryListBinding(),
  ),
  GetPage(
    name: OrderHistoryDetailView.route,
    page: () => OrderHistoryDetailView(),
    binding: OrderHistoryDetailBinding(),
  ),
];
