import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../../core/localization/language_const.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../../../data/dummy/product_dummy.dart';
import '../../../../widgets/product/product_widget.dart';

class ProductDetailRelated extends StatelessWidget{
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
                International.related.tr,
                style: AppStyle.subtitle18,
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
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  ProductDummy.products.length,
                      (index) {
                    return PreviewVerticalProductWidget(
                      image: ProductDummy.products[index],
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}