


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clean_arch_app/features/authentication/domain/entity/account_entity.dart';

part 'account_entity_model.freezed.dart';
part 'account_entity_model.g.dart';

@Freezed()
class AccountEntityModel extends AccountEntity with _$AccountEntityModel{

  const factory AccountEntityModel({required String token})= _AccountEntityModel;

  factory AccountEntityModel.fromJson(Map<String,dynamic>json)=>_$AccountEntityModelFromJson(json);
}