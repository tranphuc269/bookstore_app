import 'package:flutter/cupertino.dart';

import '../../../core/app/app_constant.dart';
import '../../../core/themes/app_style.dart';
import '../../../data/models/response/catalog/category/category_data.dart';
import '../cached_image.dart';

class PreviewCategoryWidget extends StatelessWidget {
  const PreviewCategoryWidget({required this.data});

  final CategoryData data;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(right: AppConst.defaultMediumMargin),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 160,
            width: MediaQuery.of(context).size.width * 0.8,
            child: CachedImage(
              url: data.imgUrl,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const SizedBox(
            height: AppConst.defaultMediumMargin,
          ),
          Padding(
            padding: AppConst.kPaddingSmallDefaultHorizontal,
            child: Text(
              data.name,
              style: AppStyle.subtitle18,
              maxLines: 1,
            ),
          )
        ],
      ),
    );
  }
}
