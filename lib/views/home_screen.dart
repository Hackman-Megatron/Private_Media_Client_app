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

        children: [
          SpeedDialChild(
            child: const Icon(Icons.abc),
            label: "Release",
          ),
          SpeedDialChild(
            child: const Icon(Icons.abc),
            label: "Release",
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
