import 'package:flutter/material.dart';
import 'package:test_project/core/init_app.dart';
import 'package:test_project/core/navigator/navigation_service.dart';
import 'package:test_project/features/people/people_screen.dart';

import 'routes/router.dart';

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
      navigatorKey: getIt<NavigationService>().navigatorKey,
      home: PeopleScreen(),
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
