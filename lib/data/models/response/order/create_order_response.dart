import '../base_response.dart';
import '../user/address_data.dart';

class CreateOrderResponse extends BaseResponse {
  CreateOrderResponse(
      {required super.meta, required this.data});

  factory CreateOrderResponse.fromJson(Map<String, dynamic> json) {
    return CreateOrderResponse(
      meta: MetaStatus.fromJson(json['meta']),
      data: CreateOrderData.fromJson(json['data']),
    );
  }

  CreateOrderData data;
}

class CreateOrderData {
  CreateOrderData(
      {required this.paymentType,
      required this.totalPrice,
      required this.billingAddress,
      required this.created_at,
      required this.data,
      required this.delivered,
      required this.deliveredDate,
      required this.itemsTotalPrice,
      required this.paid,
      required this.paymentDate,
      required this.paymentUrl,
      required this.shippingAddress,
      required this.shippingPrice,
      required this.taxPrice});

  factory CreateOrderData.fromJson(Map<String, dynamic> json) {
    return CreateOrderData(
      paymentType: json['paymentType'],
      totalPrice: json['totalPrice'],
      billingAddress: AddressData.fromJson(json['billingAddress']),
      created_at: json['created_at'],
      data:
          (json['data'] as List).map((e) => OrderItemData.fromJson(e)).toList(),
      delivered: json['delivered'],
      deliveredDate: json['deliveredDate'],
      itemsTotalPrice: json['itemsTotalPrice'],
      paid: json['paid'],
      paymentDate: json['paymentDate'],
      paymentUrl: json['paymentUrl'],
      shippingAddress: AddressData.fromJson(json['shippingAddress']),
      shippingPrice: json['shippingPrice'],
      taxPrice: json['taxPrice'],
    );
  }

  bool delivered;
  bool paid;
  String? paymentUrl;
  String paymentType;
  String created_at;
  String? deliveredDate;
  String? paymentDate;
  double totalPrice;
  double shippingPrice;
  double taxPrice;
  double itemsTotalPrice;
  AddressData shippingAddress;
  AddressData billingAddress;
  List<OrderItemData> data;
}

class OrderItemData {
  OrderItemData(
      {required this.images,
      required this.productId,
      required this.orderExtendedPrice,
      required this.orderItemPrice,
      required this.quantity});

  factory OrderItemData.fromJson(Map<String, dynamic> json) {
    return OrderItemData(
      images: (json['images'] as List).map((e) => e.toString()).toList(),
      productId: json['productId'],
      orderExtendedPrice: json['orderExtendedPrice'],
      orderItemPrice: json['orderItemPrice'],
      quantity: json['quantity'],
    );
  }

  String productId;
  int quantity;
  double orderItemPrice;
  double orderExtendedPrice;
  List<String> images;
}
