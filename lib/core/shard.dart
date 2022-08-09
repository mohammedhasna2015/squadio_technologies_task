import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:squadio_technologies_task/core/navigator/navigation_service.dart';

import 'di.dart';

class Shard {
  Future<bool> checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      snackBarMessageContextWithColorLeesTime(
          getIt<NavigationService>().navigatorKey.currentContext!,
          "No connection , try again later ",
          Colors.red);
      return false;
    }
  }

  void snackBarMessageContextWithColorLeesTime(
      BuildContext context, String msg, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: color,
      content: Text(
        msg,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      duration: Duration(seconds: 1),
    ));
  }
}
