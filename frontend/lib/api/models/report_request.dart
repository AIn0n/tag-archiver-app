// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'report_request_metrics.dart';

part 'report_request.g.dart';

@JsonSerializable()
class ReportRequest {
  const ReportRequest({
    required this.startDate,
    required this.endDate,
    required this.metrics,
    this.region,
  });
  
  factory ReportRequest.fromJson(Map<String, Object?> json) => _$ReportRequestFromJson(json);
  
  final DateTime startDate;
  final DateTime endDate;
  final String? region;
  final List<ReportRequestMetrics> metrics;

  Map<String, Object?> toJson() => _$ReportRequestToJson(this);
}
