

import 'package:clean_arch_app/features/products/domain/entity/products.dart';

abstract class ProductsRepo{

  Future<List<Products>> getProductsRepo(String title);
}