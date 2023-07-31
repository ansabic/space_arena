import 'package:events/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../main_menu/bloc/main_menu_bloc.dart';
import 'bloc/settings_bloc.dart';

extension StringedTime on int {
  String get timeFormat => "${(this ~/ 60).toString().padLeft(2, "0")}:${(this % 60).toString().padLeft(2, "0")}";
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<SettingsBloc>();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocProvider.value(
        value: getIt<SettingsBloc>(),
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
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
                                        style: const TextStyle(color: Colors.white),
                                        controller: bloc.goldCd,
                                        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"^[0-9]+$"))],
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          final value = bloc.goldCd.text;
                                          if (value.isNotEmpty) {
                                            getIt<SettingsBloc>().add(
                                                SettingsEvent.setGoldMineCoolDown(goldMineCoolDown: int.parse(value)));
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
                                        style: const TextStyle(color: Colors.white),
                                        controller: bloc.crystalCd,
                                        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"^[0-9]+$"))],
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          final value = bloc.crystalCd.text;
                                          if (value.isNotEmpty) {
                                            getIt<SettingsBloc>().add(SettingsEvent.setCrystalMineCoolDown(
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
                                        style: const TextStyle(color: Colors.white),
                                        controller: bloc.plasmaCd,
                                        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"^[0-9]+$"))],
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          final value = bloc.plasmaCd.text;
                                          if (value.isNotEmpty) {
                                            getIt<SettingsBloc>().add(SettingsEvent.setPlasmaMineCoolDown(
                                                plasmaMineCoolDown: int.parse(value)));
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
                              const Expanded(child: Text("Game duration: ")),
                              Expanded(child: Text(state.gameDurationSeconds.timeFormat)),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        style: const TextStyle(color: Colors.white),
                                        controller: bloc.gameDuration,
                                        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"^[0-9]+$"))],
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          final value = bloc.gameDuration.text;
                                          if (value.isNotEmpty) {
                                            getIt<SettingsBloc>().add(
                                                SettingsEvent.setGameDuration(gameDurationSeconds: int.parse(value)));
                                          }
                                        },
                                        child: const Text("Update"))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: TextButton(
                        onPressed: () {
                          BlocProvider.of<MainMenuBloc>(context)
                              .add(const MainMenuEvent.changePage(entry: MainMenuEntry.mainMenu));
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
