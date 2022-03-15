import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_shop_app/core/enums/pastry_type.dart';

part 'pastry_model.freezed.dart';
part 'pastry_model.g.dart';

@freezed
class PastryModel with _$PastryModel{
  const factory PastryModel({
    required String name,
    required String image,
    required num rating,
    required num price,
    required PastryType pastryType,
    required String calories,
    required String deliveryTime,
    @Default(1) num quantity,
    @Default(false) bool addedToCart,
    @Default('') String detail,
    @Default(false) bool favourite
  }) = _PastryModel;

  factory PastryModel.fromJson(Map<String, dynamic> map) => _$PastryModelFromJson(map);
}