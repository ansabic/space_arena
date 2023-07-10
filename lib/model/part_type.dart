import 'package:space_arena/model/price.dart';

enum PartType {
  shield(resource: "assets/images/parts2/ship2_body2.png", price: Price(gold: 80, plasma: 0, crystal: 0)),
  weapon(resource: "assets/images/parts2/ship2_detail.png", price: Price(gold: 80, plasma: 20, crystal: 10)),
  thruster(resource: "assets/images/parts2/ship2_detail2-2.png", price: Price(gold: 50, plasma: 50, crystal: 0));

  final String resource;
  final Price price;

  const PartType({required this.resource, required this.price});
}
