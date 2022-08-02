

import 'package:clean_arch_app/core/external/network_checker.dart';
import 'package:clean_arch_app/features/categories/data/data_sources/categories_remote_source.dart';
import 'package:clean_arch_app/features/categories/domain/entity/categories.dart';
import 'package:clean_arch_app/features/categories/domain/repository/categories_repo.dart';
import '../../../../core/error/exceptions.dart';

class CategoriesRepositoriesImp implements CategoriesRepo{
  CategoriesRemoteSource categoriesRemoteSource;
  NetworkChecker networkChecker;
  CategoriesRepositoriesImp({
          required this.categoriesRemoteSource,
          required this.networkChecker});

  @override
  Future<List<Categories>> getCategoriesRepo() async{
    if(await networkChecker.online){
      return categoriesRemoteSource.getCategoriesRemoteSource();
    }
    else {
      throw ServerException();
    }

  }

}