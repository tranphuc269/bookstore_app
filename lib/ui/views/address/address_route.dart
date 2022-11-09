import 'package:get/get.dart';

import 'address_binding.dart';
import 'address_view.dart';
import 'edit_address/edit_address_view.dart';

final addressRoute = [
  GetPage(
    name: AddressView.route,
    page: () => AddressView(),
    binding: AddressBinding(),
  ),
  GetPage(
    name: EditAddressAddressView.route,
    page: () => EditAddressAddressView(),
  ),
];