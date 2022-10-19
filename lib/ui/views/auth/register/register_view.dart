import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/base/stateless_view_base.dart';
import '../../../../core/helper/validator_helper.dart';
import '../../../../core/localization/language_const.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_style.dart';
import '../../../widgets/base_button.dart';
import '../../../widgets/base_form_field.dart';
import '../login/login_view.dart';
import 'components/register_header.dart';
import 'register_controller.dart';

class RegisterView extends StateLessViewBase<RegisterController> {
  static const route = '/register';

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    return Container(
      padding: AppConst.kPaddingMediumDefault,
      child: Column(
        children: [
          _buildHeader(),
          _buildForm(context),
          _buildFooter(context),
        ],
      ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    return RegisterHeader();
  }

  Row _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(International.register.tr, style: AppStyle.headline2),
              const SizedBox(height: 10),
              Text(International.loginSubtitle.tr, style: AppStyle.subtitle16),
            ],
          ),
        ),
        const Flexible(
          child: Image(
              image: AssetImage('assets/images/img_login.png'), width: 250),
        )
      ],
    );
  }

  Form _buildForm(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          BaseFormField(
            label: International.userName.tr,
            hint: International.userName.tr,
            controller: controller.userNameController,
            keyboardType: TextInputType.phone,
            icon: Icons.phone,
            validator: (value) => AppValidator.field(
              title: International.phone.tr,
              value: value.toString(),
              regex: AppRegex.phone,
            ),
          ),
          const SizedBox(height: 16),
          Obx(
            () => CustomPasswordFieldForm(
              label: International.password.tr,
              hint: International.password.tr,
              controller: controller.passController,
              icon: Icons.lock,
              hiddenText: controller.isHiddenPassword.value,
              endIcon: IconButton(
                  icon: const Icon(Icons.visibility_off),
                  onPressed: () => controller.hidePassword()),
              validator: (value) => AppValidator.field(
                title: International.password.tr,
                value: value.toString(),
                regex: AppRegex.password,
              ),
            ),
          ),
          const SizedBox(height: 16),
          CustomPasswordFieldForm(
            label: International.name.tr,
            hint: International.name.tr,
            controller: controller.nameController,
            icon: Icons.drive_file_rename_outline_outlined,
            validator: (value) => AppValidator.generalField(
              value.toString(),
            ),
          ),
          const SizedBox(height: 16),
          CustomPasswordFieldForm(
            label: International.email.tr,
            hint: International.email.tr,
            icon: Icons.email_outlined,
            controller: controller.emailController,
            validator: (value) => AppValidator.field(
              title: International.email.tr,
              value: value.toString(),
              regex: AppRegex.email,
            ),
          ),
          const SizedBox(height: 16),
          BaseButton(
            onPressed: () {
              FocusScope.of(context).unfocus();
              controller.register();
            },
            text: International.register.tr,
            icon: Icons.arrow_forward,
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }

  Column _buildFooter(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(International.forgotPassword.tr),
            InkWell(
              child: Text(
                International.reset.tr,
                style: const TextStyle(
                    color: AppColors.primary, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(International.haveAccount.tr),
            InkWell(
              child: Text(
                International.login.tr,
                style: const TextStyle(
                    color: AppColors.primary, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Get.offAndToNamed(LoginView.route);
              },
            ),
          ],
        ),
      ],
    );
  }
}
