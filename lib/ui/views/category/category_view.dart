import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app/app_constant.dart';
import '../../../core/base/stateless_view_base.dart';
import '../../../data/dummy/category_dummy.dart';
import '../../widgets/base/base_view.dart';
import '../../widgets/category/category_widget.dart';
import 'category_controller.dart';
import 'components/category_appbar.dart';
import 'components/category_banner.dart';

class CategoryView extends StateLessViewBase<CategoryController> {
  CategoryView();

  static const route = '/category';

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
            const SizedBox(
              height: AppConst.defaultMediumMargin,
            ),
            CategoryBanner(),
            ...List.generate(
              CategoryDummy.images.length,
              (index) => CategoryWidget(
                img: CategoryDummy.images[index],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    return CategoryAppBar();
  }
}
