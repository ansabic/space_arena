// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      gold: json['gold'] as int,
      crystal: json['crystal'] as int,
      plasma: json['plasma'] as int,
    );

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'gold': instance.gold,
      'crystal': instance.crystal,
      'plasma': instance.plasma,
    };
