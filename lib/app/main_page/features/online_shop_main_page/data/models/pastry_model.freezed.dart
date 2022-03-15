// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pastry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PastryModel _$PastryModelFromJson(Map<String, dynamic> json) {
  return _PastryModel.fromJson(json);
}

/// @nodoc
class _$PastryModelTearOff {
  const _$PastryModelTearOff();

  _PastryModel call(
      {required String name,
      required String image,
      required num rating,
      required num price,
      required PastryType pastryType,
      required String calories,
      required String deliveryTime,
      String detail = '',
      bool favourite = false}) {
    return _PastryModel(
      name: name,
      image: image,
      rating: rating,
      price: price,
      pastryType: pastryType,
      calories: calories,
      deliveryTime: deliveryTime,
      detail: detail,
      favourite: favourite,
    );
  }

  PastryModel fromJson(Map<String, Object?> json) {
    return PastryModel.fromJson(json);
  }
}

/// @nodoc
const $PastryModel = _$PastryModelTearOff();

/// @nodoc
mixin _$PastryModel {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  num get rating => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  PastryType get pastryType => throw _privateConstructorUsedError;
  String get calories => throw _privateConstructorUsedError;
  String get deliveryTime => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  bool get favourite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PastryModelCopyWith<PastryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PastryModelCopyWith<$Res> {
  factory $PastryModelCopyWith(
          PastryModel value, $Res Function(PastryModel) then) =
      _$PastryModelCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String image,
      num rating,
      num price,
      PastryType pastryType,
      String calories,
      String deliveryTime,
      String detail,
      bool favourite});
}

/// @nodoc
class _$PastryModelCopyWithImpl<$Res> implements $PastryModelCopyWith<$Res> {
  _$PastryModelCopyWithImpl(this._value, this._then);

  final PastryModel _value;
  // ignore: unused_field
  final $Res Function(PastryModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? rating = freezed,
    Object? price = freezed,
    Object? pastryType = freezed,
    Object? calories = freezed,
    Object? deliveryTime = freezed,
    Object? detail = freezed,
    Object? favourite = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      pastryType: pastryType == freezed
          ? _value.pastryType
          : pastryType // ignore: cast_nullable_to_non_nullable
              as PastryType,
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTime: deliveryTime == freezed
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      favourite: favourite == freezed
          ? _value.favourite
          : favourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PastryModelCopyWith<$Res>
    implements $PastryModelCopyWith<$Res> {
  factory _$PastryModelCopyWith(
          _PastryModel value, $Res Function(_PastryModel) then) =
      __$PastryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String image,
      num rating,
      num price,
      PastryType pastryType,
      String calories,
      String deliveryTime,
      String detail,
      bool favourite});
}

/// @nodoc
class __$PastryModelCopyWithImpl<$Res> extends _$PastryModelCopyWithImpl<$Res>
    implements _$PastryModelCopyWith<$Res> {
  __$PastryModelCopyWithImpl(
      _PastryModel _value, $Res Function(_PastryModel) _then)
      : super(_value, (v) => _then(v as _PastryModel));

  @override
  _PastryModel get _value => super._value as _PastryModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? rating = freezed,
    Object? price = freezed,
    Object? pastryType = freezed,
    Object? calories = freezed,
    Object? deliveryTime = freezed,
    Object? detail = freezed,
    Object? favourite = freezed,
  }) {
    return _then(_PastryModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      pastryType: pastryType == freezed
          ? _value.pastryType
          : pastryType // ignore: cast_nullable_to_non_nullable
              as PastryType,
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTime: deliveryTime == freezed
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      favourite: favourite == freezed
          ? _value.favourite
          : favourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PastryModel implements _PastryModel {
  const _$_PastryModel(
      {required this.name,
      required this.image,
      required this.rating,
      required this.price,
      required this.pastryType,
      required this.calories,
      required this.deliveryTime,
      this.detail = '',
      this.favourite = false});

  factory _$_PastryModel.fromJson(Map<String, dynamic> json) =>
      _$$_PastryModelFromJson(json);

  @override
  final String name;
  @override
  final String image;
  @override
  final num rating;
  @override
  final num price;
  @override
  final PastryType pastryType;
  @override
  final String calories;
  @override
  final String deliveryTime;
  @JsonKey()
  @override
  final String detail;
  @JsonKey()
  @override
  final bool favourite;

  @override
  String toString() {
    return 'PastryModel(name: $name, image: $image, rating: $rating, price: $price, pastryType: $pastryType, calories: $calories, deliveryTime: $deliveryTime, detail: $detail, favourite: $favourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PastryModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.pastryType, pastryType) &&
            const DeepCollectionEquality().equals(other.calories, calories) &&
            const DeepCollectionEquality()
                .equals(other.deliveryTime, deliveryTime) &&
            const DeepCollectionEquality().equals(other.detail, detail) &&
            const DeepCollectionEquality().equals(other.favourite, favourite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(pastryType),
      const DeepCollectionEquality().hash(calories),
      const DeepCollectionEquality().hash(deliveryTime),
      const DeepCollectionEquality().hash(detail),
      const DeepCollectionEquality().hash(favourite));

  @JsonKey(ignore: true)
  @override
  _$PastryModelCopyWith<_PastryModel> get copyWith =>
      __$PastryModelCopyWithImpl<_PastryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PastryModelToJson(this);
  }
}

abstract class _PastryModel implements PastryModel {
  const factory _PastryModel(
      {required String name,
      required String image,
      required num rating,
      required num price,
      required PastryType pastryType,
      required String calories,
      required String deliveryTime,
      String detail,
      bool favourite}) = _$_PastryModel;

  factory _PastryModel.fromJson(Map<String, dynamic> json) =
      _$_PastryModel.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  num get rating;
  @override
  num get price;
  @override
  PastryType get pastryType;
  @override
  String get calories;
  @override
  String get deliveryTime;
  @override
  String get detail;
  @override
  bool get favourite;
  @override
  @JsonKey(ignore: true)
  _$PastryModelCopyWith<_PastryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
