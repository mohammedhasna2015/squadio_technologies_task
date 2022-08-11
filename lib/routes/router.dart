import 'package:flutter/material.dart';
import 'package:squadio_technologies_task/features/detailsPeople/details_people_screen.dart';

class Routers {

  static Route<dynamic> generateRoute(RouteSettings? settings) {
    switch (settings!.name) {

      case DetailsPeopleScreen.id:
        return MaterialPageRoute(
          builder: (_) =>  DetailsPeopleScreen(idPeople: settings.arguments
          as int,),
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
