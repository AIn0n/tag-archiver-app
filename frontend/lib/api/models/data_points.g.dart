// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataPoints _$DataPointsFromJson(Map<String, dynamic> json) => DataPoints(
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  revenue: (json['revenue'] as num?)?.toDouble(),
  unitsSold: (json['unitsSold'] as num?)?.toInt(),
);

Map<String, dynamic> _$DataPointsToJson(DataPoints instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'revenue': instance.revenue,
      'unitsSold': instance.unitsSold,
    };
