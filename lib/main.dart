import 'package:flutter/material.dart';
import 'package:app_user/routes/routes_manager.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      initialRoute: route.splashScreen,
    );
  }
}