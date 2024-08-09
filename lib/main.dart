import '../themes/themes_manager.dart';
import 'package:flutter/material.dart';
import '../routes/routes_manager.dart' as route;
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context)=>ThemesManager(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      theme: Provider.of<ThemesManager>(context).themeData,
      initialRoute: route.splashScreen,
    );
  }
}