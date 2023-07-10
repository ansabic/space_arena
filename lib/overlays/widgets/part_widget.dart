import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_arena/model/part_type.dart';
import 'package:space_arena/model/price.dart';
import 'package:space_arena/overlays/overlay_bloc/overlay_cubit.dart';

import '../../di/di.dart';
import '../../services/bank/bank_bloc.dart';

class PartWidget extends StatelessWidget {
  final PartType partType;

  const PartWidget({Key? key, required this.partType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 1),
      child: BlocBuilder<BankBloc, BankState>(
        builder: (context, state) {
          final valid =
              partType.price.validate(other: Price(gold: state.gold, crystal: state.crystal, plasma: state.plasma));
          return Container(
            decoration: BoxDecoration(border: Border.all(color: valid ? Colors.green : Colors.red)),
            child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  if (valid) {
                    getIt<OverlayCubit>().placePart(type: partType);
                  }
                },
                child: Stack(
                  children: [
                    Center(child: Image.asset(partType.resource, width: 80, height: 80)),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(partType.key.toString()),
                      ),
                    )
                  ],
                )),
          );
        },
      ),
    );
  }
}
