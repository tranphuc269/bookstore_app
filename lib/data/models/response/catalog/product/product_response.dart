import '../../base_response.dart';
import 'product_data.dart';

class ProductListResponse extends BaseResponse {
  ProductListResponse({
    required super.meta,
    required this.data,
  });

  factory ProductListResponse.fromJson(Map<String, dynamic> json) {
    return ProductListResponse(
      data: (json['data'] as List).map((e) => ProductData.fromJson(e)).toList(),
      meta: BaseStatus.fromJson(json['meta']),
    );
  }

  List<ProductData> data;
}

class ProductSingleResponse extends BaseResponse {
  ProductSingleResponse({
    required super.meta,
    required this.data,
  });

  factory ProductSingleResponse.fromJson(Map<String, dynamic> json) {
    return ProductSingleResponse(
      meta: BaseStatus.fromJson(json['meta']),
      data: ProductData.fromJson(json['data']),
    );
  }

  ProductData data;
}
