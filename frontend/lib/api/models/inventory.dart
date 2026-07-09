// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'status.dart';

part 'inventory.g.dart';

@JsonSerializable()
class Inventory {
  const Inventory({
    required this.status,
    required this.quantity,
  });
  
  factory Inventory.fromJson(Map<String, Object?> json) => _$InventoryFromJson(json);
  
  final Status status;
  final int quantity;

  Map<String, Object?> toJson() => _$InventoryToJson(this);
}
