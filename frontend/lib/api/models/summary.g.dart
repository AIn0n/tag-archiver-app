// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Summary _$SummaryFromJson(Map<String, dynamic> json) => Summary(
  totalRevenue: (json['totalRevenue'] as num?)?.toDouble(),
  totalUnitsSold: (json['totalUnitsSold'] as num?)?.toInt(),
);

Map<String, dynamic> _$SummaryToJson(Summary instance) => <String, dynamic>{
  'totalRevenue': instance.totalRevenue,
  'totalUnitsSold': instance.totalUnitsSold,
};
