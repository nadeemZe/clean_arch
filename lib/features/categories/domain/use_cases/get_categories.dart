

import 'package:clean_arch_app/features/categories/domain/entity/categories.dart';
import 'package:clean_arch_app/features/categories/domain/repository/categories_repo.dart';

class GetCategoriesUseCase{
  CategoriesRepo categoriesRepo;

  GetCategoriesUseCase({required this.categoriesRepo});

  Future<List<Categories>> getCategories(){
    return categoriesRepo.getCategoriesRepo();
  }
}