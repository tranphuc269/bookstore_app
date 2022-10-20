import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/themes/app_style.dart';

class PaymentAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Container(
        height: 120,
        // color: Colors.red,
        padding: AppConst.kPaddingSmallDefault,
        decoration: const BoxDecoration(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trần Văn Phúc',
                    style: AppStyle.subtitle16,
                  ),
                  const SizedBox(
                    height: AppConst.defaultVerySmallMargin,
                  ),
                  Text(
                    '0383916526',
                    style: AppStyle.subtitle16
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Align(
                      child: Text(
                        'Xã Châu Minh, Huyện Hiệp Hòa, Tỉnh Bắc Giang',
                        style: AppStyle.subtitle16,
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ],
              ),
            ),
            const Align(
              child: Icon(Ionicons.chevron_forward, size: 38,),
            )
          ],
        ),
      ),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
