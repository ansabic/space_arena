import 'dart:io';

import 'package:injectable/injectable.dart';

@injectable
class MyAddressTest {
  Future<String> getMyIpAddress() async {
    final connection = await ServerSocket.bind("localhost", 58000);
    final address =  connection.address.host;
    await connection.close();
    return address;
  }
}