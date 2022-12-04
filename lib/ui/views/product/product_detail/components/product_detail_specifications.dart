import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../../core/localization/language_const.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../../../data/models/response/catalog/product/product_data.dart';

class ProductDetailSpecifications extends StatelessWidget {
  const ProductDetailSpecifications({required this.productData});

  final ProductData productData;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: AppConst.kPaddingMediumDefault,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            International.specifications.tr,
            style: AppStyle.subtitle18,
          ),
          const SizedBox(
            height: AppConst.defaultMediumMargin,
          ),
          _Specification(
            title: 'Paperback',
            value: '${productData.pageCount} pages',
          ),
          _Specification(
            title: 'Publisher',
            value: productData.producerName ?? '',
          ),
          const _Specification(
            title: 'Language',
            value: 'English',
          ),
          const _Specification(
            title: 'Item ID',
            value: '6333484',
          ),
          const _Specification(
            title: 'ISBN',
            value: '0861661419',
          ),
          _Specification(
            title: 'Product Dimensions',
            value: productData.dimension ?? '',
          ),
          _Specification(
            title: 'Mass',
            value: productData.weight ?? 'ß',
          ),
        ],
      ),
    );
  }
}

class _Specification extends StatelessWidget {
  const _Specification({required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin:
          const EdgeInsets.symmetric(vertical: AppConst.defaultVerySmallMargin),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title:  ',
            style: AppStyle.subtitle16
                .copyWith(color: const Color(0xFF323232).withOpacity(0.54)),
          ),
          Expanded(
            child: Text(
              value,
              style: AppStyle.subtitle16,
            ),
          ),
        ],
      ),
    );
  }
}
