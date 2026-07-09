// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'price.g.dart';

@JsonSerializable()
class Price {
  const Price({
    required this.amount,
    required this.currency,
  });
  
  factory Price.fromJson(Map<String, Object?> json) => _$PriceFromJson(json);
  
  final double amount;
  final String currency;

  Map<String, Object?> toJson() => _$PriceToJson(this);
}
