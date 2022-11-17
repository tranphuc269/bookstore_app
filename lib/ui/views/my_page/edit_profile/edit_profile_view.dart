import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/base/stateless_view_base.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../widgets/base/base_view.dart';
import '../../../widgets/base_button.dart';
import 'components/edit_profile_appbar.dart';
import 'components/edit_profile_field.dart';
import 'components/edit_profile_image.dart';
import 'edit_profile_controller.dart';

class EditProfileView extends StateLessViewBase<EditProfileController> {
  static const route = '/edit_profile_view';

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    return Obx(
      () => BaseView(
        loadingEnabled: controller.isLoading.isTrue,
        errorEnabled: controller.isError.value,
        isConnectNetwork: controller.isConnectNetwork.value,
        onRetry: () => controller.onInit(),
        child: Column(
          children: [
            EditProfileImage(),
            EditProfileField(
              controller: viewModel.firstNameController,
              title: 'First Name',
            ),
            EditProfileField(
              controller: viewModel.lastNameController,
              title: 'Last Name',
            ),
            EditProfileField(
              controller: viewModel.lastNameController,
              title: 'Email',
            ),
            EditProfileField(
              controller: viewModel.lastNameController,
              title: 'Date Of Birth',
            ),
            EditProfileField(
              controller: viewModel.lastNameController,
              title: 'Description',
              maxLine: 6,
            ),
            BaseButton(
              margin: const EdgeInsets.symmetric(horizontal: 48, vertical: 32),
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
    return EditProfileAppBar();
  }
}
