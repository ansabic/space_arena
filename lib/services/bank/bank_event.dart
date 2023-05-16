part of 'bank_bloc.dart';

abstract class BankEvent {}

class AddValue extends BankEvent {
  final MineType mineType;

  AddValue({required this.mineType});
}
