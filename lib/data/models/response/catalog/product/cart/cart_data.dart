import 'cart_item_data.dart';

class CartData {
  CartData(
      {required this.data, required this.cartId, required this.totalPrice});

  factory CartData.fromJson(Map<String, dynamic> json) {
    return CartData(
        data: (json['items'] as List)
            .map((e) => CartItemData.fromJson(e))
            .toList(),
        cartId: json['cartId'],
        totalPrice: json['totalPrice']);
  }

  String cartId;
  double totalPrice;
  List<CartItemData> data;
}
