import 'dart:io';
import 'dart:math';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:test_project/core/init_app.dart';
import 'package:test_project/core/navigator/navigation_service.dart';

class Shard {
  Future<bool> checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
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

  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  static Random _rnd = Random();

  static String getRandomString(int length) =>
      String.fromCharCodes(Iterable.generate(
          length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  static Future<void> savePhoto(String imagePath) async {
    var fileName = getRandomString(5);
    try {
      print(imagePath);
      var data = await http.get(Uri.parse(imagePath));
      var bytes = data.bodyBytes;
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/" + fileName + ".jpg");
      File urlFile = await file.writeAsBytes(bytes);
      snackBarSuccessDownloadContextWithColor();
    } catch (e) {
      throw Exception("Error opening url file");
    }
  }

  static void snackBarSuccessDownloadContextWithColor() {
    const snackBar = SnackBar(
      backgroundColor: Colors.green,
      content: Text(
        " Image downloaded successful",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      duration: Duration(seconds: 4),
    );
    ScaffoldMessenger.of(
            getIt<NavigationService>().navigatorKey.currentContext!)
        .showSnackBar(snackBar);
  }
}
