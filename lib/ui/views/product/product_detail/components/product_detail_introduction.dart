import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../../core/app/app_constant.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../../../data/dummy/product_dummy.dart';



class ProductDetailIntroduction extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(padding: AppConst.kPaddingMediumDefault, child: Column(
      children: [
        Text('FROM HELL', style: AppStyle.subtitle24,),
        Text('Alan Moore', style: AppStyle.link.copyWith(height: 2)),
        const SizedBox(height: AppConst.defaultSmallMargin,),
        HtmlWidget(ProductDummy.htmlDummy),
      ],
    ),);
  }
}