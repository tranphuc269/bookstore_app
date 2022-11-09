import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app/app_constant.dart';
import '../../../core/base/stateless_view_base.dart';
import '../../../core/localization/language_const.dart';
import '../../../core/themes/app_colors.dart';
import '../../widgets/auto_hiden_keyboard.dart';
import '../../widgets/base_button.dart';
import 'address_controller.dart';
import 'components/address_appbar.dart';
import 'components/address_list.dart';
import 'widgets/address_form_widget.dart';

class AddressView extends StateLessViewBase<AddressController> {
  static const route = '/address';

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    return AutoHideKeyboard(
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: AppConst.defaultMediumMargin),
        child: AddressList(),
      ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    return AddressAppBar();
  }
}
