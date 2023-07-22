import 'package:events/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/settings_bloc.dart';

extension StringedTime on int {
  String get timeFormat => "${(this ~/ 60).toString().padLeft(2, "0")}:${(this % 60).toString().padLeft(2, "0")}";
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final goldCd = TextEditingController();
    final crystalCd = TextEditingController();
    final plasmaCd = TextEditingController();
    final gameDuration = TextEditingController();
    final ipAddress = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocProvider(
        create: (_) => getIt<SettingsBloc>(),
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: Text(
                        "Settings",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          const Expanded(child: Text("Gold mine cooldown:")),
                          Expanded(child: Text("${state.goldMineCoolDown} s")),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: goldCd,
                                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"^[0-9]+$"))],
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      final value = goldCd.text;
                                      if (value.isNotEmpty) {
                                        BlocProvider.of<SettingsBloc>(context)
                                            .add(SettingsEvent.setGoldMineCoolDown(goldMineCoolDown: int.parse(value)));
                                      }
                                    },
                                    child: const Text("Update"))
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Expanded(child: Text("Crystal mine cooldown:")),
                          Expanded(child: Text("${state.crystalMineCoolDown} s")),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: crystalCd,
                                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"^[0-9]+$"))],
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      final value = crystalCd.text;
                                      if (value.isNotEmpty) {
                                        BlocProvider.of<SettingsBloc>(context).add(SettingsEvent.setCrystalMineCoolDown(
                                            crystalMineCoolDown: int.parse(value)));
                                      }
                                    },
                                    child: const Text("Update"))
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Expanded(child: Text("Plasma mine cooldown:")),
                          Expanded(child: Text("${state.plasmaMineCoolDown} s")),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: plasmaCd,
                                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"^[0-9]+$"))],
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      final value = plasmaCd.text;
                                      if (value.isNotEmpty) {
                                        BlocProvider.of<SettingsBloc>(context).add(
                                            SettingsEvent.setPlasmaMineCoolDown(plasmaMineCoolDown: int.parse(value)));
                                      }
                                    },
                                    child: const Text("Update"))
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Expanded(child: Text("Game duration:")),
                          Expanded(child: Text(state.gameDurationSeconds.timeFormat)),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: gameDuration,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(RegExp(r'^(2[0-3]|[01]?[0-9]):([0-5]?[0-9])$'))
                                    ],
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      final value = gameDuration.text;
                                      if (value.contains(":") && !value.endsWith(":") && !value.startsWith(":")) {
                                        final split = value.split(":");
                                        final mins = int.parse(split[0]) * 60;
                                        final secs = int.parse(split[1]);
                                        BlocProvider.of<SettingsBloc>(context)
                                            .add(SettingsEvent.setGameDuration(gameDurationSeconds: mins + secs));
                                      }
                                    },
                                    child: const Text("Update"))
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Expanded(child: Text("Server ip address:")),
                          Expanded(child: Text(state.serverIpAddress)),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: ipAddress,
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      final value = ipAddress.text;
                                      if (value.isNotEmpty) {
                                        BlocProvider.of<SettingsBloc>(context)
                                            .add(SettingsEvent.setOtherAddress(address: value));
                                      }
                                    },
                                    child: const Text("Update"))
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Back")),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
