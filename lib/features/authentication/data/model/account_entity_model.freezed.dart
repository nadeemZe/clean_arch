// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_entity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountEntityModel _$AccountEntityModelFromJson(Map<String, dynamic> json) {
  return _AccountEntityModel.fromJson(json);
}

/// @nodoc
mixin _$AccountEntityModel {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountEntityModelCopyWith<AccountEntityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEntityModelCopyWith<$Res> {
  factory $AccountEntityModelCopyWith(
          AccountEntityModel value, $Res Function(AccountEntityModel) then) =
      _$AccountEntityModelCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$AccountEntityModelCopyWithImpl<$Res>
    implements $AccountEntityModelCopyWith<$Res> {
  _$AccountEntityModelCopyWithImpl(this._value, this._then);

  final AccountEntityModel _value;
  // ignore: unused_field
  final $Res Function(AccountEntityModel) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AccountEntityModelCopyWith<$Res>
    implements $AccountEntityModelCopyWith<$Res> {
  factory _$$_AccountEntityModelCopyWith(_$_AccountEntityModel value,
          $Res Function(_$_AccountEntityModel) then) =
      __$$_AccountEntityModelCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$_AccountEntityModelCopyWithImpl<$Res>
    extends _$AccountEntityModelCopyWithImpl<$Res>
    implements _$$_AccountEntityModelCopyWith<$Res> {
  __$$_AccountEntityModelCopyWithImpl(
      _$_AccountEntityModel _value, $Res Function(_$_AccountEntityModel) _then)
      : super(_value, (v) => _then(v as _$_AccountEntityModel));

  @override
  _$_AccountEntityModel get _value => super._value as _$_AccountEntityModel;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_AccountEntityModel(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountEntityModel implements _AccountEntityModel {
  const _$_AccountEntityModel({required this.token});

  factory _$_AccountEntityModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountEntityModelFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'AccountEntityModel(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountEntityModel &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_AccountEntityModelCopyWith<_$_AccountEntityModel> get copyWith =>
      __$$_AccountEntityModelCopyWithImpl<_$_AccountEntityModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountEntityModelToJson(this);
  }

  @override
  String get userToken => token;
}

abstract class _AccountEntityModel implements AccountEntityModel {
  const factory _AccountEntityModel({required final String token}) =
      _$_AccountEntityModel;

  factory _AccountEntityModel.fromJson(Map<String, dynamic> json) =
      _$_AccountEntityModel.fromJson;

  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AccountEntityModelCopyWith<_$_AccountEntityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
