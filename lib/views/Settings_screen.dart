import 'package:app_user/classes/colors_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../themes/theme_changer_box.dart';
import '../themes/theme_changer_button.dart';
import '../themes/themes_manager.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50,),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 40
                  ),
                  child: Text("Settings",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: ColorsProvider.primaryGradient
                      )
                    ),
                    width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset("assets/illustrations/test.jpg",
                                    width: 100,height: 100, fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 25,),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 20,),
                                    Text("Stephane Patrick NTA NTA",
                                      style: TextStyle(
                                        fontSize: 17.5,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Icon(Icons.contacts_sharp),
                                            SizedBox(width: 10,),
                                            Text("Full-Stack Developer ",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                color: ColorsProvider.whiteColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ),
                ),
                const SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25,
                      right: 25
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(25)
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(25)
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25
                  ),
                  child: ThemeChangerBox(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Change Theme",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        ThemeChangerButton(
                          color: Theme.of(context).colorScheme.tertiary,
                          onTap: () {
                            Provider.of<ThemesManager>(
                                context, listen: false
                            ).toggleTheme();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
      )
    );
  }
}
