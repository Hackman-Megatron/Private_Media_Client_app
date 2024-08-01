import 'package:app_user/classes/colors_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../routes/routes_manager.dart' as route;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(
        const Duration(
            seconds: 10
        ), (){
          Navigator.pushNamed(context, route.startScreen);
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: ColorsProvider.primaryGradient,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )
        ),
        child: Column(
          children: [
            Spacer(),
            SizedBox(
              height: 600,
              width: 450,
              child: Center(
                  child: Image.asset("assets/enterprises/three.png",
                    height: 450,
                    fit: BoxFit.cover,
                  ),
              ),
            ),
            const Spacer(),
            const SpinKitThreeInOut(
              color: ColorsProvider.primaryColor2,
              size: 75,
            ),
            const Spacer(),
            const Text("Logos Enterprise",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
