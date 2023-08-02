import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model/part_type.dart';
import 'package:model/price.dart';
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
                    Center(
                        child: Image.asset(
                      partType.resource,
                      width: [MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height].min / 7,
                      height: [MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height].min / 7,
                    )),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(partType.key.toString()),
                      ),
                    ),
                    Positioned(
                      top: 0,
                        left: 0,
                        right: 0,
                        child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(partType.name,textAlign: TextAlign.center),
                    )),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              partType.price.gold.toString(),
                              style: TextStyle(color: Colors.amber),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              partType.price.plasma.toString(),
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              partType.price.crystal.toString(),
                              style: TextStyle(color: Colors.purple),
                            ),
                          ),
                        ],
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
