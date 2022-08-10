import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:squadio_technologies_task/core/navigator/navigation_service.dart';

import 'init_app.dart';

class Shard {
  Future<bool> checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    }else {return false;}
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
