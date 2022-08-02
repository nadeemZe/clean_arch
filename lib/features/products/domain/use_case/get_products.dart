

import 'package:clean_arch_app/features/products/domain/entity/products.dart';
import 'package:clean_arch_app/features/products/domain/repository/products_repo.dart';

class GetProductsUseCase{
  ProductsRepo productsRepo;
  GetProductsUseCase({required this.productsRepo});

  Future<List<Products>>getProducts(String title){
    return productsRepo.getProductsRepo(title);
  }
}