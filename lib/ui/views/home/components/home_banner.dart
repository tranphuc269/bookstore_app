import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../data/dummy/home_banner_dummy.dart';
import '../../../widgets/cached_image.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Container(
      height: 200,
      margin: AppConst.kPaddingSmallDefaultVertical,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return CachedImage(
            url: HomeBannerDummy.images[index],
            borderRadius: BorderRadius.circular(18),
          );
        },
        itemCount: HomeBannerDummy.images.length,
        viewportFraction: 0.8,
        scale: 0.85,
      ),
    );
  }
}
