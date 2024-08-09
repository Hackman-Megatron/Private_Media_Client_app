import 'package:app_user/classes/colors_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        foregroundColor: Colors.white,
        backgroundColor: ColorsProvider.primaryColor3,
        overlayOpacity: 0.5,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.article, color: Colors.black, size: 30,),
            backgroundColor: ColorsProvider.primaryColor1,
            label: "New Publication",
            onTap: (){}
          ),
          SpeedDialChild(
            child: const Icon(Icons.campaign, color: Colors.black,),
            backgroundColor: ColorsProvider.primaryColor1,
            label: "New Announcement",
            onTap: (){}
          ),
        ],
      ),
      body: const Center(
        child: Text(
            "Home Screen"
        ),
      ),
    );
  }
}
