

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:clean_arch_app/core/external/network_checker.dart';
import 'package:clean_arch_app/features/categories/data/data_sources/categories_remote_source.dart';
import 'package:clean_arch_app/features/categories/data/repository/categories_repositories_imp.dart';
import 'package:clean_arch_app/features/categories/domain/repository/categories_repo.dart';
import 'package:clean_arch_app/features/categories/domain/use_cases/get_categories.dart';
import 'package:clean_arch_app/features/categories/presentation/bloc/categories_bloc.dart';
import 'package:clean_arch_app/features/products/data/data_source/products_remote_source.dart';
import 'package:clean_arch_app/features/products/data/repository/products_repositories_imp.dart';
import 'package:clean_arch_app/features/products/domain/repository/products_repo.dart';
import 'package:clean_arch_app/features/products/domain/use_case/get_products.dart';
import 'package:clean_arch_app/features/products/presentation/bloc/products_bloc.dart';

 final getIt=GetIt.instance;

 void setUp(){
  //bloc
  getIt.registerFactory(() => CategoriesBloc(getCategoriesUseCase: getIt()));
  getIt.registerFactory(() => ProductsBloc(getProductsUseCase: getIt()));
  //usecases
  getIt.registerLazySingleton(() => GetCategoriesUseCase(categoriesRepo: getIt()));
  getIt.registerLazySingleton(() => GetProductsUseCase(productsRepo: getIt()));
  //repo
  getIt.registerLazySingleton<CategoriesRepo>(() => CategoriesRepositoriesImp(categoriesRemoteSource: getIt(), networkChecker: getIt()));
  getIt.registerLazySingleton<ProductsRepo>(() => ProductsRepositoriesImpl(productsRemoteSource: getIt(), networkChecker: getIt()));
  //data source
  getIt.registerLazySingleton<CategoriesRemoteSource>(() => CategoriesRemoteSourceImp(dio: getIt()));
  getIt.registerLazySingleton<ProductsRemoteSource>(() => ProductsREmoteSourceImpl(dio: getIt()));
  //external
  getIt.registerLazySingleton(() => Dio());

  getIt.registerLazySingleton<NetworkChecker>(() => NetworkCheckerImpl(internetConnectionChecker: getIt()));

  getIt.registerLazySingleton(() => InternetConnectionChecker());

}