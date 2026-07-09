// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';

import 'fallback/fallback_client.dart';

/// Sample E-Commerce & Analytics API `v1.0.0`.
///
/// An example OpenAPI specification featuring two distinct endpoints demonstrating URL path parameters, request bodies, and complex data models.
class RestClient {
  RestClient(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '1.0.0';

  FallbackClient? _fallback;

  FallbackClient get fallback => _fallback ??= FallbackClient(_dio, baseUrl: _baseUrl);
}
