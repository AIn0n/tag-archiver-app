// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportResponse _$ReportResponseFromJson(Map<String, dynamic> json) =>
    ReportResponse(
      reportId: json['reportId'] as String,
      generatedAt: DateTime.parse(json['generatedAt'] as String),
      summary: Summary.fromJson(json['summary'] as Map<String, dynamic>),
      dataPoints: (json['dataPoints'] as List<dynamic>)
          .map((e) => DataPoints.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReportResponseToJson(ReportResponse instance) =>
    <String, dynamic>{
      'reportId': instance.reportId,
      'generatedAt': instance.generatedAt.toIso8601String(),
      'summary': instance.summary,
      'dataPoints': instance.dataPoints,
    };
