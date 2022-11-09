import 'package:flutter/material.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../../widgets/cached_image.dart';

class ProfileUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(top: AppConst.defaultLargeMargin),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child: CachedImage(
              url:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiSvaLtaapcpwkXbwmOHGwBT5V8np1btjKzIALKwnropvXVwRggFIEH6LFEeIBrJwVwPA&usqp=CAU',
              borderRadius: BorderRadius.circular(120),
            ),
          ),
          const SizedBox(
            width: AppConst.defaultMediumMargin,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trần Văn Phúc',
                style: AppStyle.subtitle18,
              ),
              Text(
                'phuc260900@gmail.com',
                style: AppStyle.subtitle18,
              ),
            ],
          )
        ],
      ),
    );
  }
}
