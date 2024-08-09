import 'package:flutter/material.dart';
import '../widgets/signs_buttons.dart';
import '../routes/routes_manager.dart' as route;


class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    height: 500,
                    width: 400,
                    child: Image.asset("assets/illustrations/first.png",
                      height: 300,
                    ),
                  ),
                ),
               const SizedBox(height: 5,),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text("Get Linked To The Tech Universe Coming From The Best Institute.",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text("Lorem, ipsum do lor sit amet consectetur adipis icing elit. Fugiat debitis mollitia dolor possimus, nam, provident est quos tempora perferendis incidunt veniam.",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: SignsButtons(
                      onTap: (){
                        Navigator.pushNamed(context, route.signInScreen);
                      },
                      signText: "Get Started"
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}
