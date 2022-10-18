import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app/app_constant.dart';
import '../../../data/dummy/category_dummy.dart';
import '../../widgets/base/base_view.dart';
import '../../widgets/category/category_widget.dart';
import '../../widgets/colored_status_bar.dart';
import 'category_controller.dart';
import 'components/category_appbar.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView();

  static const route = '/category';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ColoredStatusBar(
      child: Scaffold(
        appBar: CategoryAppBar(),
        body: SafeArea(
          child: Obx(
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
                  ...List.generate(
                    CategoryDummy.images.length,
                    (index) => CategoryWidget(img: CategoryDummy.images[index],),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
