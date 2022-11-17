import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../widgets/profile/profile_item_widget.dart';
import '../../../address/address_view.dart';
import '../../../qr_code_scanner/qr_code_scanner_view.dart';
import '../../edit_profile/edit_profile_view.dart';
import '../../order_history_list/order_history_list_view.dart';

class ProfileItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: AppConst.kPaddingMediumDefault,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileItemWidget(
            title: 'Edit profile',
            onTab: () {
              Get.toNamed(EditProfileView.route);
            },
            imgSource: 'assets/icons/ic_setting.png',
            icForward: true,
          ),
          ProfileItemWidget(
            title: 'Order History',
            onTab: () {
              Get.toNamed(OrderHistoryListView.route);
            },
            imgSource: 'assets/icons/ic_order_history.png',
            icForward: true,
          ),
          ProfileItemWidget(
            title: 'Address',
            onTab: () {
              Get.toNamed(AddressView.route);
            },
            imgSource: 'assets/icons/ic_address.png',
            icForward: true,
          ),
          ProfileItemWidget(
            title: 'Scanner',
            onTab: () {
              Get.toNamed(QRCodeScannerView.route);
            },
            imgSource: 'assets/icons/ic_scanner.png',
            icForward: true,
          ),
          ProfileItemWidget(
            title: 'Language',
            onTab: () {},
            imgSource: 'assets/icons/ic_language.png',
            icForward: true,
          ),
          ProfileItemWidget(
            title: 'About Us',
            onTab: () {},
            imgSource: 'assets/icons/ic_about_us.png',
            icForward: true,
          ),
          ProfileItemWidget(
            title: 'Help Center',
            onTab: () {},
            imgSource: 'assets/icons/ic_help.png',
            icForward: true,
          ),
          ProfileItemWidget(
            title: 'Logout',
            onTab: () {},
            imgSource: 'assets/icons/ic_logout.png',
            icForward: false,
          ),
        ],
      ),
    );
  }
}
