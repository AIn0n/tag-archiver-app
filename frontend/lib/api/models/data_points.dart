// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'data_points.g.dart';

@JsonSerializable()
class DataPoints {
  const DataPoints({
    this.date,
    this.revenue,
    this.unitsSold,
  });
  
  factory DataPoints.fromJson(Map<String, Object?> json) => _$DataPointsFromJson(json);
  
  final DateTime? date;
  final double? revenue;
  final int? unitsSold;

  Map<String, Object?> toJson() => _$DataPointsToJson(this);
}
