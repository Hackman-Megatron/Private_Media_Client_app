import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../routes/routes_manager.dart' as route;
import '../classes/colors_provider.dart';
import '../widgets/signs_buttons.dart';
import '../widgets/signs_text_fields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50,),
                const Center(
                  child: Icon(
                    Symbols.passkey,
                    size: 150,
                    color: ColorsProvider.primaryColor3,
                  ),
                ),
                const SizedBox(height: 40,),
                const Text("Let's first register you Here",
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 10
                  ),
                  child: SignsTextFields(
                    controller: confirmController,
                    hint: "Confirm Password",
                    obscureText: false,
                  ),
                ),
                const SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SignsButtons(
                    onTap: (){
                      Navigator.pushNamed(context, route.signInScreen);
                    },
                    signText: "Sign Up",
                  ),
                ),
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",
                      style: TextStyle(
                        color: ColorsProvider.secondaryColor1,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, route.signInScreen);
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          color: ColorsProvider.primaryColor1,
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
