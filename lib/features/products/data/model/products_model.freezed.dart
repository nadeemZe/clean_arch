// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsModel _$ProductsModelFromJson(Map<String, dynamic> json) {
  return _ProductsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsModelCopyWith<ProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsModelCopyWith<$Res> {
  factory $ProductsModelCopyWith(
          ProductsModel value, $Res Function(ProductsModel) then) =
      _$ProductsModelCopyWithImpl<$Res>;
  $Res call({int id, String title, double price, String image});
}

/// @nodoc
class _$ProductsModelCopyWithImpl<$Res>
    implements $ProductsModelCopyWith<$Res> {
  _$ProductsModelCopyWithImpl(this._value, this._then);

  final ProductsModel _value;
  // ignore: unused_field
  final $Res Function(ProductsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductsModelCopyWith<$Res>
    implements $ProductsModelCopyWith<$Res> {
  factory _$$_ProductsModelCopyWith(
          _$_ProductsModel value, $Res Function(_$_ProductsModel) then) =
      __$$_ProductsModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, double price, String image});
}

/// @nodoc
class __$$_ProductsModelCopyWithImpl<$Res>
    extends _$ProductsModelCopyWithImpl<$Res>
    implements _$$_ProductsModelCopyWith<$Res> {
  __$$_ProductsModelCopyWithImpl(
      _$_ProductsModel _value, $Res Function(_$_ProductsModel) _then)
      : super(_value, (v) => _then(v as _$_ProductsModel));

  @override
  _$_ProductsModel get _value => super._value as _$_ProductsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_ProductsModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsModel implements _ProductsModel {
  const _$_ProductsModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.image});

  factory _$_ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final double price;
  @override
  final String image;

  @override
  String toString() {
    return 'ProductsModel(id: $id, title: $title, price: $price, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_ProductsModelCopyWith<_$_ProductsModel> get copyWith =>
      __$$_ProductsModelCopyWithImpl<_$_ProductsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsModelToJson(this);
  }

  @override
  set id(int _id) {
    id=_id;
  }

  @override
  set image(String _image) {
    image=_image;
  }

  @override
  set price(double _price) {
    price=_price;
  }

  @override
  String get productTitle=>title;

  @override
  int get productId => id;

  @override
  String get productImage => image;

  @override
  double get productPrice => price;

  @override
  set title(String _title) {
    title=_title;
  }
}

abstract class _ProductsModel implements ProductsModel {
  const factory _ProductsModel(
      {required final int id,
      required final String title,
      required final double price,
      required final String image}) = _$_ProductsModel;

  factory _ProductsModel.fromJson(Map<String, dynamic> json) =
      _$_ProductsModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsModelCopyWith<_$_ProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
