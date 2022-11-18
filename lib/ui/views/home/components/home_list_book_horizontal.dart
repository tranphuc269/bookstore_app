import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/localization/language_const.dart';
import '../../../../core/themes/app_style.dart';
import '../../../../data/dummy/product_dummy.dart';
import '../../../../data/models/response/catalog/product/product_data.dart';
import '../../../widgets/product/product_widget.dart';

class HomeListBookHorizontal extends StatelessWidget {
  const HomeListBookHorizontal(
      {required this.title,
      required this.heightList,
      required this.previewType,
      required this.products});

  final String title;
  final double heightList;
  final PreviewEnum previewType;
  final List<ProductData> products;

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
                title,
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
              height: heightList,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  switch (previewType) {
                    case PreviewEnum.VERTICAL:
                      // TODO: Handle this case.
                      return PreviewVerticalProductWidget(
                        productData: products[index],
                      );
                    case PreviewEnum.STACK:
                      // TODO: Handle this case.
                      return PreviewStackProductWidget(
                        productData: products[index],
                      );
                  }
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: index == ProductDummy.products.length - 1
                        ? 0
                        : AppConst.defaultMediumMargin,
                  );
                },
                itemCount: products.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
