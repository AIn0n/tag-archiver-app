// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Inventory _$InventoryFromJson(Map<String, dynamic> json) => Inventory(
  status: Status.fromJson(json['status'] as String),
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$InventoryToJson(Inventory instance) => <String, dynamic>{
  'status': _$StatusEnumMap[instance.status]!,
  'quantity': instance.quantity,
};

const _$StatusEnumMap = {
  Status.inStock: 'IN_STOCK',
  Status.lowStock: 'LOW_STOCK',
  Status.outToOrder: 'OUT_TO_ORDER',
  Status.$unknown: r'$unknown',
};
