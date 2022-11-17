import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../data/models/response/catalog/banner/banner_data.dart';
import '../../../widgets/cached_image.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({required this.banners});

  final List<BannerData> banners;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200,
      margin: AppConst.kPaddingSmallDefaultVertical,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return CachedImage(
            url: banners[index].imgUrl,
            borderRadius: BorderRadius.circular(18),
          );
        },
        itemCount: banners.length,
        viewportFraction: 0.8,
        scale: 0.85,
      ),
    );
  }
}
