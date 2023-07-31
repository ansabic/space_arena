part of 'bank_bloc.dart';

abstract class BankEvent {}

class AddValue extends BankEvent {
  final MineType mineType;

  AddValue({required this.mineType});
}

class BuyPart extends BankEvent {
  final PartType part;

  BuyPart({required this.part});
}
