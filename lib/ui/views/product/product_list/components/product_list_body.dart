import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../../data/dummy/product_dummy.dart';
import '../../../../../data/models/response/catalog/product/product_data.dart';
import '../../../../widgets/product/product_widget.dart';
import '../product_list_controller.dart';

class ProductListBody extends StatelessWidget {
  const ProductListBody({required this.displayType, required this.products});

  final ProductListType displayType;
  final List<ProductData> products;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // alignment: Alignment.center,
      margin: AppConst.kPaddingMediumDefaultHorizontal,
      child:
      displayType == ProductListType.GRID
          ? _ProductGird(products: products,)
          : _ProductList(products: products,),
    );
  }
}

class _ProductGird extends StatelessWidget {
  const _ProductGird({required this.products});

  final List<ProductData> products;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.53,
      padding:
      const EdgeInsets.symmetric(vertical: AppConst.defaultLargeMargin),
      mainAxisSpacing: AppConst.defaultMediumMargin,
      crossAxisSpacing: AppConst.defaultMediumMargin,
      children: List.generate(
        products.length,
            (index) =>
            PreviewVerticalProductWidget(
              productData: products[index],
            ),
      ),
    );
  }
}

class _ProductList extends StatelessWidget {

  _ProductList({required this.products});
  List<ProductData> products;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return const SizedBox(
            height: AppConst.defaultMediumMargin,
          );
        }
        return PreviewStackProductWidget(
          productData: products[index],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: index == ProductDummy.products.length - 1
              ? 0
              : AppConst.defaultMediumMargin,
        );
      },
      itemCount: products.length,
    );
  }
}
