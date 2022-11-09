import 'package:flutter/cupertino.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../../../data/dummy/product_dummy.dart';
import '../../../../widgets/cached_image.dart';

class OrderHistoryDetailInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 20, 16, 32),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: AppColors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(right: 10),
                child: CachedImage(
                  url: ProductDummy.products.first,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Oneplus 9 pro',
                    style: AppStyle.subtitle16
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: AppConst.defaultSmallMargin,
                  ),
                  Text(
                    'On 12 June 2021; 04:23 AM',
                    style: AppStyle.normalSmall,
                  ),
                  const SizedBox(
                    height: AppConst.defaultMediumMargin12,
                  ),
                  Text(
                    '200,000 VNĐ',
                    style: AppStyle.subtitle16.copyWith(
                        color: AppColors.primary, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              top: AppConst.defaultMediumMargin,
              left: 12,
              bottom: AppConst.defaultMediumMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Eden Hazard',
                  style: AppStyle.subtitle18.copyWith(
                      color: AppColors.systemBlack,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: AppConst.defaultVerySmallMargin,
                ),
                Text(
                  'Warwick New York, West 54th Street',
                  style: AppStyle.subtitle16,
                ),
                const SizedBox(
                  height: AppConst.defaultSmallMargin,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Order ID : ',
                      style: AppStyle.subtitle16,
                      children: [
                        TextSpan(
                          text: '525144',
                          style: AppStyle.subtitle16.copyWith(
                              color: const Color(0xFFF2C94C),
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
