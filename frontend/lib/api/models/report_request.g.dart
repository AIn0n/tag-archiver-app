// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportRequest _$ReportRequestFromJson(Map<String, dynamic> json) =>
    ReportRequest(
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      metrics: (json['metrics'] as List<dynamic>)
          .map((e) => ReportRequestMetrics.fromJson(e as String))
          .toList(),
      region: json['region'] as String?,
    );

Map<String, dynamic> _$ReportRequestToJson(ReportRequest instance) =>
    <String, dynamic>{
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'region': instance.region,
      'metrics': instance.metrics
          .map((e) => _$ReportRequestMetricsEnumMap[e]!)
          .toList(),
    };

const _$ReportRequestMetricsEnumMap = {
  ReportRequestMetrics.revenue: 'REVENUE',
  ReportRequestMetrics.unitsSold: 'UNITS_SOLD',
  ReportRequestMetrics.averageOrderValue: 'AVERAGE_ORDER_VALUE',
  ReportRequestMetrics.$unknown: r'$unknown',
};
