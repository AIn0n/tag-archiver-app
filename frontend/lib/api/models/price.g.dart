// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
  amount: (json['amount'] as num).toDouble(),
  currency: json['currency'] as String,
);

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
  'amount': instance.amount,
  'currency': instance.currency,
};
