class CartItemData {
  CartItemData({required this.productName,
    required this.productId,
    required this.quantity,
    required this.cartItemId,
    required this.createdAt,
    required this.extendedPrice,
    required this.itemPrice,
    required this.updatedAt});

  factory CartItemData.fromJson(Map<String, dynamic> json){
    return CartItemData(productName: json['productName'],
        productId: json['productId'],
        quantity: json['quantity'],
        cartItemId: json['cartItemId'],
        createdAt: json['createdAt'],
        extendedPrice: json['extendedPrice'],
        itemPrice: json['itemPrice'],
        updatedAt: json['updatedAt']);
  }

  String createdAt;
  String updatedAt;
  String cartItemId;
  int quantity;
  double itemPrice;
  double extendedPrice;
  String productId;
  String productName;
}
