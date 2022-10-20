import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../../core/app/app_constant.dart';
import '../../../core/themes/app_style.dart';
import '../../../data/dummy/product_dummy.dart';
import '../../views/product/product_detail/product_detail_view.dart';
import '../cached_image.dart';

class PaymentItemWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 160,
      margin: const EdgeInsets.only(bottom: AppConst.defaultMediumMargin),
      child: Row(
        children: [
          GestureDetector(
            child: CachedImage(
              url: ProductDummy.products[0],
              borderRadius: BorderRadius.circular(8),
            ),
            onTap: (){
              Get.toNamed(ProductDetailView.route);
            },
          ),
          const SizedBox(width: AppConst.defaultMediumMargin,),
          Padding(
            padding: const EdgeInsets.only(top: AppConst.defaultMediumMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Conan tập tập 11',
                  style: AppStyle.subtitle18.copyWith(
                    color: const Color(0xFF36596A),
                  ),
                ),
                const SizedBox(
                  height: AppConst.defaultSmallMargin,
                ),
                Text(
                  'SKU : ACGF.V5PU.AEAA',
                  style: AppStyle.subtitle14.copyWith(
                    color: const Color(0xFF323232).withOpacity(0.54),
                  ),
                ),
                const SizedBox(
                  height: AppConst.defaultSmallMargin,
                ),
                RichText(
                  text: TextSpan(
                    text: '30,000đ',
                    style: AppStyle.subtitle16
                        .copyWith(color: const Color(0xFFFF8236)),
                  ),
                ),
                const SizedBox(
                  height: AppConst.defaultSmallMargin,
                ),
                Text(
                  'Số lượng : 1',
                  style: AppStyle.subtitle14.copyWith(
                    color: const Color(0xFF323232),
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}