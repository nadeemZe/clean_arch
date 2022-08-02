

import 'package:clean_arch_app/features/categories/domain/entity/categories.dart';

abstract class CategoriesStates{}

class CategoriesInit extends CategoriesStates{}
class Loading extends CategoriesStates{}
class Error extends CategoriesStates{}

class CategoriesDone extends CategoriesStates{
  List<Categories> categories;
  CategoriesDone({required this.categories});

}