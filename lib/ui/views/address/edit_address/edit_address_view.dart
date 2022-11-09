import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/base/stateless_view_base.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../widgets/auto_hiden_keyboard.dart';
import '../../../widgets/base_button.dart';
import '../widgets/address_form_widget.dart';
import 'components/edit_address_appbar.dart';
import 'edit_address_controller.dart';


class EditAddressAddressView extends StateLessViewBase<EditAddressController> {
  static const route = '/edit_address';

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    return AutoHideKeyboard(
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: AppConst.defaultMediumMargin),
        child: ListView(
          children: [
            const SizedBox(height: AppConst.defaultLargeMargin,),
            AddressFormWidget(
              title: 'Full Name',
              controller: viewModel.nameController,
              hintText: 'Enter Full Name / Home / Office ',
            ),
            AddressFormWidget(
              title: 'Country',
              controller: viewModel.nameController,
              hintText: 'Enter Country',
            ),
            AddressFormWidget(
              title: 'City',
              controller: viewModel.nameController,
              hintText: 'Enter Country',
            ),
            AddressFormWidget(
              title: 'District',
              controller: viewModel.nameController,
              hintText: 'Enter District',
            ),
            AddressFormWidget(
              title: 'ZipCode',
              controller: viewModel.nameController,
              hintText: 'Enter Zip Code',
            ),
            AddressFormWidget(
              title: 'Detail Address',
              controller: viewModel.nameController,
              hintText: 'Enter Detail Address',
              maxLine: 6,
            ),
            BaseButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
              },
              text: 'Add new address',
              color: AppColors.primary,
              borderRadius: 32,
            ),
          ],
        ),
      ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    return EditAddressAppBar();
  }
}
