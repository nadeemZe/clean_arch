

import 'package:clean_arch_app/features/categories/domain/entity/categories.dart';

abstract class CategoriesRepo{
  Future<List<Categories>>getCategoriesRepo();
}