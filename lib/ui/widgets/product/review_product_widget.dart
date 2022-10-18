import 'package:flutter/cupertino.dart';
import '../../../core/app/app_constant.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_shadows.dart';
import '../../../core/themes/app_style.dart';
import '../cached_image.dart';

class ReviewProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 340,
      margin: const EdgeInsets.only(right: AppConst.defaultMediumMargin),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              padding: const EdgeInsets.all(AppConst.defaultVerySmallMargin),
              decoration: BoxDecoration(
                boxShadow: [
                  AppShadows.shadow3,
                ],
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppConst.defaultSmallMargin)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 100),
                    height: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Melanie Strong',
                          style: AppStyle.subtitle16,
                        ),
                        Row(
                          children: [
                            Text(
                              '10 may 2018',
                              style: AppStyle.subtitle14.copyWith(
                                  color: const Color(0xFF323232)
                                      .withOpacity(0.54)),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Icon(
                              CupertinoIcons.star_fill,
                              color: Color(0xFFFFBE47),
                              size: 12,
                            ),
                            Text(
                              '9.8',
                              style: AppStyle.subtitle14.copyWith(
                                  color: const Color(0xFF323232)
                                      .withOpacity(0.54)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    child: Text(
                      'From Hell is one of my favourite comics of all time so I totally loved this. It was like sitting in a room with Alan',
                      style: AppStyle.subtitle14.copyWith(
                        color: const Color(0xFF323232).withOpacity(0.54),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            top: AppConst.defaultMediumMargin,
          ),
          Positioned.fill(
            child: Align(
              child: SizedBox(
                width: 70,
                height: 70,
                child: CachedImage(
                  url:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTADuoamvE4id1VU9qZGIBu5tx4wMQiUnXHuL5r3r9D&s',
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              alignment: Alignment.topLeft,
            ),
            left: 12,
          )
        ],
      ),
    );
  }
}
