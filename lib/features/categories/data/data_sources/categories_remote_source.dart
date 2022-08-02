

import 'package:dio/dio.dart';
import 'package:clean_arch_app/features/categories/data/model/categories_model.dart';
import '../../../../core/error/exceptions.dart';

abstract class CategoriesRemoteSource{
  Future<List<CategoriesModel>>getCategoriesRemoteSource();
}

class CategoriesRemoteSourceImp implements CategoriesRemoteSource{
  final Dio dio;
  CategoriesRemoteSourceImp({required this.dio});

  @override
  Future<List<CategoriesModel>> getCategoriesRemoteSource()async {
    List<CategoriesModel> categoriesList=[];
    try {
      Response response = await dio.get('https://fakestoreapi.com/products/categories');
      var r = (response.data)  ;
      for(int i=0;i<r.length;i++){
        CategoriesModel categoriesModel= CategoriesModel(name: r[i]);
        categoriesList.add(categoriesModel);
      }
      return categoriesList;
    } on DioError {
      throw ServerException();
    }

  }

}