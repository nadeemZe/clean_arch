

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clean_arch_app/features/categories/domain/entity/categories.dart';


part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@Freezed()
class CategoriesModel extends Categories with _$CategoriesModel{

  const factory CategoriesModel({required String name})= _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String,dynamic>json)=>_$CategoriesModelFromJson(json);
}