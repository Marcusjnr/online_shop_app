// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pastry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PastryModel _$$_PastryModelFromJson(Map<String, dynamic> json) =>
    _$_PastryModel(
      name: json['name'] as String,
      image: json['image'] as String,
      rating: json['rating'] as num,
      price: json['price'] as num,
      pastryType: $enumDecode(_$PastryTypeEnumMap, json['pastryType']),
      calories: json['calories'] as String,
      deliveryTime: json['deliveryTime'] as String,
      quantity: json['quantity'] as num? ?? 1,
      addedToCart: json['addedToCart'] as bool? ?? false,
      detail: json['detail'] as String? ?? '',
      favourite: json['favourite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PastryModelToJson(_$_PastryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'rating': instance.rating,
      'price': instance.price,
      'pastryType': _$PastryTypeEnumMap[instance.pastryType],
      'calories': instance.calories,
      'deliveryTime': instance.deliveryTime,
      'quantity': instance.quantity,
      'addedToCart': instance.addedToCart,
      'detail': instance.detail,
      'favourite': instance.favourite,
    };

const _$PastryTypeEnumMap = {
  PastryType.OVERPOPULAR: 'OVERPOPULAR',
  PastryType.RECOMMENDED: 'RECOMMENDED',
  PastryType.TODAYSPECIAL: 'TODAYSPECIAL',
};
