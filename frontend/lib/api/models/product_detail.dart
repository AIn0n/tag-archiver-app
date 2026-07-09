// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'inventory.dart';
import 'price.dart';

part 'product_detail.g.dart';

@JsonSerializable()
class ProductDetail {
  const ProductDetail({
    required this.id,
    required this.name,
    required this.sku,
    required this.price,
    required this.inventory,
    this.tags,
  });
  
  factory ProductDetail.fromJson(Map<String, Object?> json) => _$ProductDetailFromJson(json);
  
  final String id;
  final String name;
  final String sku;
  final Price price;
  final List<String>? tags;
  final Inventory inventory;

  Map<String, Object?> toJson() => _$ProductDetailToJson(this);
}
