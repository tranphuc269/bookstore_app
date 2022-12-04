import 'cart_item_data.dart';

class CartData {
  CartData(
      {required this.data,
      required this.cartId,
      required this.totalPrice,
      required this.userId});

  factory CartData.fromJson(Map<String, dynamic> json) {
    return CartData(
        data: (json['data'] as List)
            .map((e) => CartItemData.fromJson(e))
            .toList(),
        cartId: json['cartId'],
        totalPrice: json['totalPrice'],
        userId: json['userId']);
  }
  String cartId;
  String userId;
  double totalPrice;
  List<CartItemData> data;
}
