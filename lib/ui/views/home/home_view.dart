import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/base/stateless_view_base.dart';
import '../../../core/localization/language_const.dart';
import '../../widgets/base/base_view.dart';
import '../../widgets/product/product_widget.dart';
import 'components/home_banner.dart';
import 'components/home_category.dart';
import 'components/home_header.dart';
import 'components/home_list_book_horizontal.dart';
import 'components/home_producer.dart';
import 'home_controller.dart';

class HomeView extends StateLessViewBase<HomeController> {
  static const String route = '/home';

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    return Obx(
      () => BaseView(
        loadingEnabled: controller.isLoading.isTrue,
        errorEnabled: controller.isError.value,
        onRetry: controller.onInit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HomeHeader(),
            HomeBanner(),
            HomeListBookHorizontal(
              title: International.bookOfTheWeeks.tr,
              heightList: 267,
              previewType: PreviewEnum.VERTICAL,
            ),
            HomeCategory(),
            HomeListBookHorizontal(
              title: International.recommendations.tr,
              heightList: 267,
              previewType: PreviewEnum.VERTICAL,
            ),
            HomeListBookHorizontal(
              title: International.novelties.tr,
              heightList: 267,
              previewType: PreviewEnum.VERTICAL,
            ),
            HomeProducer(),
            HomeListBookHorizontal(
              title: International.popular.tr,
              heightList: 160,
              previewType: PreviewEnum.STACK,
            ),
            HomeListBookHorizontal(
              title: International.youWatched.tr,
              heightList: 267,
              previewType: PreviewEnum.VERTICAL,
            ),
          ],
        ),
      ),
    );
  }
}
