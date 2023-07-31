import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:coordinator/coordinator.dart';
import 'package:coordinator/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intranet_ip/intranet_ip.dart';
import 'package:space_arena/main_menu/bloc/main_menu_bloc.dart';
import 'package:space_arena/services/client_connection.dart';

enum MultiplayerMenuState {
  idle,
  hostPinging,
  clientJoining;
}

class MultiplayerMenu extends StatelessWidget {
  const MultiplayerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final stateController = StreamController<MultiplayerMenuState>();
    stateController.add(MultiplayerMenuState.idle);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: StreamBuilder<MultiplayerMenuState>(
          stream: stateController.stream,
          builder: (context, data) {
            switch (data.data) {
              case MultiplayerMenuState.idle:
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () async {
                            stateController.add(MultiplayerMenuState.hostPinging);
                            getIt<Coordinator>().hostServerListener(isHost: true).listen((event) async {
                              if (event == null) {
                                return;
                              }
                              final myAddress = (await intranetIpv4()).address;
                              if (event != myAddress) {
                                await getIt<ClientConnection>().connect(ipAddress: myAddress);
                              }
                            });
                            await getIt<Coordinator>().runGameServer();
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            child: Text(
                              "Host",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            stateController.add(MultiplayerMenuState.clientJoining);
                            getIt<Coordinator>().hostServerListener(isHost: false).listen((address) async {
                              if (address == null) {
                                return;
                              }
                              final myAddress = (await intranetIpv4()).address;
                              getIt<Coordinator>().udpSocket?.send(
                                  utf8.encode("stop_udp_space_arena$myAddress$address"),
                                  InternetAddress("255.255.255.255"),
                                  55600);
                              if (address.startsWith(myAddress)) {
                                await getIt<ClientConnection>().connect(ipAddress: address.replaceAll(myAddress, ""));
                              }
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            child: Text(
                              "Join",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            BlocProvider.of<MainMenuBloc>(context)
                                .add(const MainMenuEvent.changePage(entry: MainMenuEntry.mainMenu));
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            child: Text(
                              "Main menu",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              case MultiplayerMenuState.hostPinging:
                getIt<Coordinator>().ping();
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Waiting for another player to join...."),
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () async {
                          await getIt<Coordinator>().stopPingingOrListening();
                          if (context.mounted) {
                            BlocProvider.of<MainMenuBloc>(context)
                                .add(const MainMenuEvent.changePage(entry: MainMenuEntry.mainMenu));
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            "Main menu",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              case MultiplayerMenuState.clientJoining:
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Waiting to establish connection with the host..."),
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () async {
                          await getIt<Coordinator>().stopPingingOrListening();
                          if(context.mounted) {
                            BlocProvider.of<MainMenuBloc>(context)
                              .add(const MainMenuEvent.changePage(entry: MainMenuEntry.mainMenu));
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            "Main menu",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              default:
                return const Center(child: CircularProgressIndicator.adaptive());
            }
          }),
    );
  }
}
