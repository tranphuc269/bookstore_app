import '../../../../models/response/catalog/product/cart/cart_added_request.dart';
import '../../../../models/response/catalog/product/product_data.dart';

abstract class ProductService {
  Future<void> addToCart(
      {required Function() onSuccess,
      required Function() onFailure,
      required CartAddedRequest cartRequest});

  Future<List<ProductData>> getProductBySortPageSize({
    required int page,
    required int size,
  });

  Future<ProductData> getSingleProduct({required String productId});


  Future<List<ProductData>> getProductByProducerId({
    required String producerId,
  });

  Future<List<ProductData>> getProductByCategoryId({
    required String categoryId,
  });
}
