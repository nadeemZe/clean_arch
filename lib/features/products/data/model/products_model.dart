

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clean_arch_app/features/products/domain/entity/products.dart';

part 'products_model.freezed.dart';
part 'products_model.g.dart';

@Freezed()
class ProductsModel extends Products with _$ProductsModel{

  const factory ProductsModel({
       required int id,
       required String title,
       required double price,
       required String image
       })= _ProductsModel;

  factory ProductsModel.fromJson(Map<String,dynamic>json)=>_$ProductsModelFromJson(json);
}