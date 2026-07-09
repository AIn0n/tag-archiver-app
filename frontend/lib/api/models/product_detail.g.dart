// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) =>
    ProductDetail(
      id: json['id'] as String,
      name: json['name'] as String,
      sku: json['sku'] as String,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      inventory: Inventory.fromJson(json['inventory'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductDetailToJson(ProductDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sku': instance.sku,
      'price': instance.price,
      'tags': instance.tags,
      'inventory': instance.inventory,
    };
