import 'package:freezed_annotation/freezed_annotation.dart';
part 'price.g.dart';

@JsonSerializable()
class Price {
  final int gold;
  final int crystal;
  final int plasma;

  const Price({required this.gold, required this.crystal, required this.plasma});

  factory Price.fromJson(dynamic json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);

  bool validate({required Price other}) => other.crystal >= crystal && other.gold >= gold && other.plasma >= plasma;
}
