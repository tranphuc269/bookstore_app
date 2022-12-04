class OrderRequest {
  OrderRequest(
      {required this.billingAddressId,
      required this.information,
      required this.paymentType,
      required this.shippingAddressId});

  Map<String, dynamic> toJson(){
    return {
      'billingAddressId' : '6dab7c38-3a04-42be-b88e-8a87eafffa7d',
      'shippingAddressId' : '6dab7c38-3a04-42be-b88e-8a87eafffa7d',
      'information' : 'Thanh toán đơn hàng',
      'paymentType' : 'VNPAY'
    };
  }

  String billingAddressId;
  String shippingAddressId;
  String information;
  PAYMENT_TYPE paymentType;
}

enum PAYMENT_TYPE { VNPAY }
