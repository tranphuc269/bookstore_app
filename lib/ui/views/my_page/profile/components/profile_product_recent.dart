import 'package:flutter/material.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../../../data/dummy/product_dummy.dart';
import '../../../../widgets/product/product_widget.dart';

class ProfileProductRecent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: AppConst.defaultMediumMargin),
          child: Text(
            'Sản phẩm đã xem gần đây',
            style: AppStyle.subtitle16.copyWith(
                fontWeight: FontWeight.bold,
                color: const Color(0xFF323232).withOpacity(0.8)),
          ),
        ),
        const SizedBox(
          height: AppConst.defaultMediumMargin,
        ),
        SizedBox(
          height: 150,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return const SizedBox(
                  height: AppConst.defaultMediumMargin,
                );
              }
              return PreviewStackProductWidget(
                image: ProductDummy.products[index - 1],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: index == ProductDummy.products.length - 1
                    ? 0
                    : AppConst.defaultMediumMargin,
              );
            },
            itemCount: ProductDummy.products.length + 1,
          ),
        )
      ],
    );
  }
}
