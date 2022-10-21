import 'package:flutter/material.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/themes/app_style.dart';

class NotificationItemHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 40,
      color: Colors.black12,
      padding: AppConst.kPaddingSmallDefaultHorizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Cập nhật quan trọng',
            style: AppStyle.subtitle14,
          ),
          Text(
            'Đọc tất cả',
            style: AppStyle.subtitle14.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
