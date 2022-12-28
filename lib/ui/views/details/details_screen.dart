import 'package:flutter/material.dart';
import '../../../data/models/Product.dart';
import '../../../data/models/response/catalog/product/product_data.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: 4.1),
      ),
      body: Body(product: agrs.product),
    );
  }
}

class ProductDetailsArguments {
  final ProductData product;

  ProductDetailsArguments({required this.product});
}
