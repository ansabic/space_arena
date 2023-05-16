

enum MineType {
  gold(uses: 100, yield: 5),
  plasma(uses: 50, yield: 2),
  crystal(uses: 10, yield: 1);

  final int uses;
  final int yield;

  const MineType({required this.uses, required this.yield});
}
