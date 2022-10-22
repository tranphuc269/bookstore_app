import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../../core/themes/app_style.dart';

class OrderHistoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: AppConst.kPaddingMediumDefault,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trần Văn Phúc',
              style: AppStyle.subtitle18,
            ),
            const SizedBox(
              height: AppConst.defaultSmallMargin,
            ),
            Text(
              'To delivery on : 26/05/2016',
              style: AppStyle.subtitle16,
            ),
            const SizedBox(
              height: AppConst.defaultSmallMargin,
            ),
            Container(
              padding: AppConst.kPaddingMediumDefaultVertical,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black12,
                  ),
                  bottom: BorderSide(
                    color: Colors.black12,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Id \n #CN23656',
                    style: AppStyle.subtitle16,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Order Amount \n 650\$',
                    style: AppStyle.subtitle16,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Payment Type \n Online',
                    style: AppStyle.subtitle16,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              padding: AppConst.kPaddingMediumDefaultVertical,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Ionicons.location_outline,
                    color: const Color(0xFF323232).withOpacity(0.54),
                    size: 26,
                  ),
                  const SizedBox(
                    width: AppConst.defaultSmallMargin,
                  ),
                  Expanded(
                    child: Text(
                      '115 Bùi Thị Xuân, phường Bạch Đằng, quận Hai Bà Trưng, thành phố Hà Nội',
                      style: AppStyle.subtitle16,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: AppConst.defaultMediumMargin12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.cancel_outlined,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: AppConst.defaultMediumMargin,
                  ),
                  Text(
                    'Cancel Order',
                    style: AppStyle.subtitle18.copyWith(
                        color: const Color(0xFFEF5350), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
