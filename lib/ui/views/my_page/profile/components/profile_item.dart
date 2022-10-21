import 'package:flutter/material.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../widgets/profile/profile_item_widget.dart';

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
            onTab: () {},
            imgSource: 'assets/icons/ic_edit_profile.png',
            icForward: true,
          ),
          ProfileItemWidget(
            title: 'Order History',
            onTab: () {},
            imgSource: 'assets/icons/ic_order_history.png',
            icForward: true,
          ),
          ProfileItemWidget(
            title: 'Edit Address',
            onTab: () {},
            imgSource: 'assets/icons/ic_address.png',
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