import 'package:flutter/material.dart';
import 'package:test_project/features/detailsPeople/details_people_screen.dart';
import 'package:test_project/features/detailsPeople/imageOrignalSizeScreen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings? settings) {
    switch (settings!.name) {
      case DetailsPeopleScreen.id:
        return MaterialPageRoute(
          builder: (_) => DetailsPeopleScreen(
            idPeople: settings.arguments as int,
          ),
        );
      case ImageOriginalSizeScreen.id:
        return MaterialPageRoute(
          builder: (_) => ImageOriginalSizeScreen(
            imagePath: settings.arguments as String,
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
