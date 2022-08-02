

import 'package:clean_arch_app/features/products/data/data_source/products_remote_source.dart';
import 'package:clean_arch_app/features/products/domain/entity/products.dart';
import 'package:clean_arch_app/features/products/domain/repository/products_repo.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/external/network_checker.dart';

class ProductsRepositoriesImpl implements ProductsRepo{
  ProductsRemoteSource productsRemoteSource;
  NetworkChecker networkChecker;

  ProductsRepositoriesImpl({
   required this.productsRemoteSource,
   required this.networkChecker
  });

  @override
  Future<List<Products>>getProductsRepo(String title) async{
    if(await networkChecker.online){
      return productsRemoteSource.getProductsRemoteSource(title);
    }
    else {
      throw ServerException();
    }
  }
}