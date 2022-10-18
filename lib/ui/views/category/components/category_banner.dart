import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_shadows.dart';
import '../../../widgets/cached_image.dart';

class CategoryBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 16).copyWith(top: 0),
      // height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: const Color(0xFF323232).withOpacity(0.2),),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          AppShadows.shadow2,
          AppShadows.shadow4,
          AppShadows.shadow2,
        ]
      ),
      child: CachedImage(
        url:
            'https://t3.ftcdn.net/jpg/04/35/69/72/360_F_435697291_tfKcwFerQPRKcXRcO3QvR7gZVtpnQzL9.jpg',
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
