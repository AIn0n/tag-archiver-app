// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'summary.g.dart';

@JsonSerializable()
class Summary {
  const Summary({
    this.totalRevenue,
    this.totalUnitsSold,
  });
  
  factory Summary.fromJson(Map<String, Object?> json) => _$SummaryFromJson(json);
  
  final double? totalRevenue;
  final int? totalUnitsSold;

  Map<String, Object?> toJson() => _$SummaryToJson(this);
}
