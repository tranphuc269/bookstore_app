import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/localization/language_const.dart';
import '../../../../core/themes/app_style.dart';
import '../../../../data/dummy/category_dummy.dart';
import '../../../widgets/category/preview_category_widget.dart';

class HomeCategory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: AppConst.kPaddingMediumDefault,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                International.category.tr,
                style: AppStyle.subtitle16,
              ),
              Text(
                International.all.tr,
                style: AppStyle.link,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppConst.defaultMediumMargin),
            child: SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  CategoryDummy.images.length,
                  (index) => PreviewCategoryWidget(image: CategoryDummy.images[index],),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
