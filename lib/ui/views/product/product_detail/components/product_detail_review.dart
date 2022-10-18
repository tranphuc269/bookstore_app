import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../../core/localization/language_const.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../../widgets/product/review_product_widget.dart';

class ProductDetailReview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: AppConst.kPaddingMediumDefault,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                International.reviews.tr,
                style: AppStyle.subtitle18,
              ),
              Text(
                International.all.tr,
                style: AppStyle.link,
              ),
            ],
          ),
          const SizedBox(height: AppConst.defaultMediumMargin,),
          SizedBox(
            height: 235,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(4, (index) => ReviewProductWidget()),
            ),
          )
        ],
      ),
    );
  }
}