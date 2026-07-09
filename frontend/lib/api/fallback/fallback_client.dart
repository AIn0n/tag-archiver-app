// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/product_detail.dart';
import '../models/report_request.dart';
import '../models/report_response.dart';

part 'fallback_client.g.dart';

@RestApi()
abstract class FallbackClient {
  factory FallbackClient(Dio dio, {String? baseUrl}) = _FallbackClient;

  /// Get detailed product information.
  ///
  /// Retrieves comprehensive details for a specific product using its unique URL path identifier, demonstrating a complex nested return type.
  ///
  /// [productId] - The unique alphanumeric identifier of the product.
  @GET('/products/{productId}')
  Future<ProductDetail> getProductById({
    @Path('productId') required String productId,
    @DioOptions() RequestOptions? options,
  });

  /// Generate a customized sales report.
  ///
  /// Accepts specific filtering parameters and metrics within the request body to generate structured, complex aggregated analytics data.
  @POST('/analytics/reports')
  Future<ReportResponse> generateSalesReport({
    @Body() required ReportRequest body,
    @DioOptions() RequestOptions? options,
  });
}
