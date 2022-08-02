

import 'package:clean_arch_app/features/products/domain/entity/products.dart';

abstract class ProductsStates{}

class ProductsInit extends ProductsStates{}
class Loading extends ProductsStates{}
class ProductsDone extends ProductsStates{
  List<Products>products;
  ProductsDone({required this.products});
}