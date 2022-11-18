import '../../base_response.dart';
import 'product_data.dart';

class ProductResponse extends BaseResponse {
  ProductResponse({
    required super.code,
    required super.message,
    required this.data,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    return ProductResponse(
      code: json['code'],
      message: json['message'],
      data: (json['data'] as List).map((e) => ProductData.fromJson(e)).toList(),
    );
  }

  List<ProductData> data;
}