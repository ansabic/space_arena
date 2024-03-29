import 'dart:io';

import 'package:coordinator/coordinator.dart';
import 'package:events/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intranet_ip/intranet_ip.dart';
import 'package:space_arena/services/client_connection.dart';

import '../constants/constants.dart';
import 'bloc/main_menu_bloc.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Space arena",
                      style: TextStyle(fontSize: 32, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () async {
                        getIt<Coordinator>().stopPingingOrListening();
                        await getIt<Coordinator>().runGameServer(test: true);
                        await getIt<ClientConnection>().connect(ipAddress: (await intranetIpv4()).address);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          "Test",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        BlocProvider.of<MainMenuBloc>(context)
                            .add(const MainMenuEvent.changePage(entry: MainMenuEntry.multiplayer));
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          "Multiplayer",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        BlocProvider.of<MainMenuBloc>(context)
                            .add(const MainMenuEvent.changePage(entry: MainMenuEntry.settings));
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          "Settings",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        exit(0);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          "Exit",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
