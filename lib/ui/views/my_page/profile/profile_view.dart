import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/base/stateless_view_base.dart';
import '../../../widgets/base/base_view.dart';
import 'components/profile_header.dart';
import 'components/profile_item.dart';
import 'components/profile_product_recent.dart';
import 'components/profile_user.dart';
import 'profile_controller.dart';

class ProfileView extends StateLessViewBase<ProfileController> {
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
            ProfileUser(),
            ProfileItem(),
            ProfileProductRecent(),
          ],
        ),
      ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    return ProfileHeader();
  }

}
