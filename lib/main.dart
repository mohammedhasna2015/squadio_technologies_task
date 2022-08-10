import 'package:flutter/material.dart';
import 'package:squadio_technologies_task/features/people/people_screen.dart';
import 'package:squadio_technologies_task/core/init_app.dart';
import 'package:squadio_technologies_task/core/navigator/navigation_service.dart';
import 'package:squadio_technologies_task/routes/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey:getIt<NavigationService>().navigatorKey ,
      home: PeopleScreen(),
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
