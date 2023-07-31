import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:model/mine_type.dart';
import 'package:model/part_type.dart';

part 'bank_event.dart';

part 'bank_state.dart';

@lazySingleton
class BankBloc extends Bloc<BankEvent, BankState> {
  BankBloc() : super(const BankInitial()) {
    on<AddValue>((event, emit) {
      final yield = event.mineType.yield;
      switch (event.mineType) {
        case MineType.gold:
          emit(RefreshBankState(gold: state.gold + yield, crystal: state.crystal, plasma: state.plasma));
          break;
        case MineType.plasma:
          emit(RefreshBankState(gold: state.gold, crystal: state.crystal, plasma: state.plasma + yield));
          break;
        case MineType.crystal:
          emit(RefreshBankState(gold: state.gold, crystal: state.crystal + yield, plasma: state.plasma));
          break;
      }
    });
    on<BuyPart>((event, emit) {
      emit(RefreshBankState(
          gold: state.gold - event.part.price.gold,
          crystal: state.crystal - event.part.price.crystal,
          plasma: state.plasma - event.part.price.plasma));
    });
  }
}
