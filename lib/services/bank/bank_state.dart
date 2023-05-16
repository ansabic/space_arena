part of 'bank_bloc.dart';

abstract class BankState extends Equatable {
  final int gold;
  final int crystal;
  final int plasma;

  @override
  List<Object> get props => [gold, crystal, plasma];

  const BankState({required this.gold, required this.crystal, required this.plasma});
}

class BankInitial extends BankState {
  const BankInitial() : super(gold: 0, crystal: 0, plasma: 0);
}

class RefreshBankState extends BankState {
  const RefreshBankState({required super.gold, required super.crystal, required super.plasma});
}
