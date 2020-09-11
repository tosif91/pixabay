import 'package:flutter/material.dart';
import 'package:pixabay/locator.dart';
import 'package:pixabay/router.dart';
import 'package:pixabay/view/home/home.dart';
import 'package:pixabay/view/splash/splash.dart';
import 'package:stacked_services/stacked_services.dart';


void main() {
    setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
 navigatorKey: locator<NavigationService>().navigatorKey,
 onGenerateRoute: Routers.toGenerateRoute,
      
    );
  }
}
