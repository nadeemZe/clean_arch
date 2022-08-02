

import 'package:dio/dio.dart';
import 'package:clean_arch_app/features/products/data/model/products_model.dart';

import '../../../../core/error/exceptions.dart';

abstract class ProductsRemoteSource{
  Future<List<ProductsModel>> getProductsRemoteSource(String title);
}


class ProductsREmoteSourceImpl implements ProductsRemoteSource{
  final Dio dio;
  ProductsREmoteSourceImpl({required this.dio});
  @override
  Future<List<ProductsModel>> getProductsRemoteSource(String title) async{
   List<ProductsModel> products=[];
   try{
     Response response=await dio.get('https://fakestoreapi.com/products/category/$title');
     var r=(response.data) ;
     for(int i=0;i<r.length;i++){
       ProductsModel productsModel = ProductsModel.fromJson(r[i]);
       products.add(productsModel);
     }
     return products;
   }on DioError {
     throw ServerException();
   }
  }
}