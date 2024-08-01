import 'package:flutter/material.dart';

class PublishingScreen extends StatefulWidget {
  const PublishingScreen({super.key});

  @override
  State<PublishingScreen> createState() => _PublishingScreenState();
}

class _PublishingScreenState extends State<PublishingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("publish"),
      ),
    );
  }
}
