import 'package:flutter/material.dart';

import '../../../../core/app/app_constant.dart';
import '../../../widgets/notification/notification_item_widget.dart';

class NotificationItemComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: AppConst.kPaddingMediumDefault,
      child: Column(
        children: List.generate(
          6,
          (index) => NotificationItemWidget(),
        ),
      ),
    );
  }
}
