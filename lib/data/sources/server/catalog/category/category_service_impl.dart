import '../../../../../core/network/api_request.dart';
import '../../../../models/response/catalog/category/category_data.dart';
import '../../../../models/response/catalog/category/category_response.dart';
import 'category_service.dart';

class CategoryServiceImpl extends CategoryService{
  @override
  Future<List<CategoryData>> getCategory() async{
    const url = '/catalog-service/categories?sort=categoryId,asc&page=0&size=10';
    // TODO: implement getAllBanner
    final _res = await sendRequest(
      url: url,
      requestMethod: RequestMethod.GET,
      useToken: true,
    );
    final CategoryResponse category = CategoryResponse.fromJson(_res.data);
    return category.data;
  }
}