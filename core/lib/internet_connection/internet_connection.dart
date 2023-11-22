import 'dart:async';
import 'package:core/core.dart';

class InternetConnectionInfo {
  static Future<bool> checkInternetConnection() async {
    final ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    return connectivityResult == ConnectivityResult.wifi;
  }
}
