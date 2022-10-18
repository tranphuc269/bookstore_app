import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../../data/dummy/product_dummy.dart';
import '../../../../widgets/product/product_widget.dart';
import '../product_list_controller.dart';

class ProductListBody extends StatelessWidget {
  const ProductListBody({required this.displayType});

  final ProductListType displayType;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // alignment: Alignment.center,
      margin: AppConst.kPaddingMediumDefaultHorizontal,
      child:
          displayType == ProductListType.GRID ? _ProductGird() : _ProductList(),
    );
  }
}

class _ProductGird extends StatelessWidget {
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
        ProductDummy.products.length,
        (index) => PreviewVerticalProductWidget(
          image: ProductDummy.products[index],
        ),
      ),
    );
  }
}

class _ProductList extends StatelessWidget {
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
          image: ProductDummy.products[index - 1],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: index == ProductDummy.products.length - 1
              ? 0
              : AppConst.defaultMediumMargin,
        );
      },
      itemCount: ProductDummy.products.length + 1,
    );
  }
}
