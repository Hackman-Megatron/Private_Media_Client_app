import 'package:app_user/classes/colors_provider.dart';
import 'package:app_user/widgets/signs_buttons.dart';
import 'package:app_user/widgets/signs_text_fields.dart';
import 'package:flutter/material.dart';
import '../routes/routes_manager.dart' as route;

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100,),
              const Center(
                  child: Icon(
                    Icons.lock,
                    size: 150,
                    color: ColorsProvider.primaryColor3,
                  ),
              ),
              const SizedBox(height: 40,),
              const Text("Welcome Back, You've been missed",
                style: TextStyle(
                  fontSize: 20,
                  color: ColorsProvider.secondaryColor1
                ),
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10
                ),
                child: SignsTextFields(
                    controller: emailController,
                    hint: "Enter your Email",
                    obscureText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  vertical: 10
                ),
                child: SignsTextFields(
                  controller: passwordController,
                  hint: "Enter your Password",
                  obscureText: false,
                ),
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SignsButtons(
                    onTap: (){
                      Navigator.pushNamed(context, route.bottomNavBar);
                    },
                    signText: "Sign In Now",
                ),
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",
                    style: TextStyle(
                      color: ColorsProvider.secondaryColor1,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, route.signUpScreen);
                    },
                      child: const Text(
                          "Sign Up",
                        style: TextStyle(
                          color: ColorsProvider.primaryColor3,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
