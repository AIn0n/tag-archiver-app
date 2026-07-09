// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'data_points.dart';
import 'summary.dart';

part 'report_response.g.dart';

@JsonSerializable()
class ReportResponse {
  const ReportResponse({
    required this.reportId,
    required this.generatedAt,
    required this.summary,
    required this.dataPoints,
  });
  
  factory ReportResponse.fromJson(Map<String, Object?> json) => _$ReportResponseFromJson(json);
  
  final String reportId;
  final DateTime generatedAt;
  final Summary summary;
  final List<DataPoints> dataPoints;

  Map<String, Object?> toJson() => _$ReportResponseToJson(this);
}
