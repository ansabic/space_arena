class Price {
  final int gold;
  final int crystal;
  final int plasma;

  const Price({required this.gold, required this.crystal, required this.plasma});

  bool validate({required Price other}) => other.crystal >= crystal && other.gold >= gold && other.plasma >= plasma;
}
