class CartItemData {
  CartItemData({
    required this.productName,
    required this.productId,
    required this.quantity,
    required this.cartItemId,
    required this.extendedPrice,
    required this.itemPrice,
    required this.images,
  });

  factory CartItemData.fromJson(Map<String, dynamic> json) {
    return CartItemData(
      productName: json['productName'],
      productId: json['productId'],
      quantity: json['quantity'],
      cartItemId: json['cartItemId'],
      extendedPrice: json['extendedPrice'],
      itemPrice: json['itemPrice'],
      images: (json['images'] as List).map((e) => e.toString()).toList(),
    );
  }


  String cartItemId;
  int quantity;
  double itemPrice;
  double extendedPrice;
  String productId;
  String productName;
  List<String> images;
}
