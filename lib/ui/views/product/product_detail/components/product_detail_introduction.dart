import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import '../../../../../core/app/app_constant.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../../../data/models/response/catalog/product/product_data.dart';

class ProductDetailIntroduction extends StatelessWidget {
  const ProductDetailIntroduction({required this.productData});

  final ProductData productData;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: AppConst.kPaddingMediumDefault,
      child: Column(
        children: [
          Text(
            productData.productName,
            style: AppStyle.subtitle24,
          ),
          Text(productData.categoryName, style: AppStyle.link.copyWith(height: 2)),
          const SizedBox(
            height: AppConst.defaultSmallMargin,
          ),
          HtmlWidget(productData.description),
        ],
      ),
    );
  }
}
