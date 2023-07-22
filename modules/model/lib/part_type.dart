import '../price.dart';

enum PartType {
  shield(resource: "assets/images/parts2/ship2_body2.png", price: Price(gold: 80, plasma: 0, crystal: 0), key: 1),
  weapon(resource: "assets/images/parts2/ship2_detail.png", price: Price(gold: 80, plasma: 20, crystal: 10), key: 2),
  thruster(
      resource: "assets/images/parts2/ship2_detail2-2.png", price: Price(gold: 50, plasma: 50, crystal: 0), key: 3);

  final String resource;
  final Price price;
  final int key;

  const PartType({required this.resource, required this.price, required this.key});
}
