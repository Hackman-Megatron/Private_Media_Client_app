import 'package:app_user/classes/colors_provider.dart';
import 'package:app_user/widgets/chats_tab_bar.dart';
import 'package:flutter/rendering.dart';

import '../views/Settings_screen.dart';
import '../views/home_screen.dart';
import '../views/notifications_screen.dart';
import '../views/publishing_screen.dart';
import 'package:flutter/material.dart';

class BottNavBar extends StatefulWidget {
  const BottNavBar({super.key});

  @override
  State<BottNavBar> createState() => _BottNavBarState();
}

class _BottNavBarState extends State<BottNavBar> {

  int currentIndex = 0;
  List pages = const [
    HomeScreen(),
    ChatsTabBar(),
    PublishingScreen(),
    NotificationsScreen(),
    SettingsScreen(),
  ];

  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedContainer(
            margin: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 20
            ),
            height:  80,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 25,
                    offset: const Offset(8, 25),
                  ),
                ]
            ),
            duration: const Duration(milliseconds: 400),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
              onTap: (index){
                setState(() {
                  currentIndex = index;
                });
              },
              iconSize: 40,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: ColorsProvider.primaryColor3,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedItemColor: ColorsProvider.primaryColor1,
              currentIndex: currentIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.messenger), label: "chats",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_rounded), label: "Publish",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: "Notifications",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings_rounded), label: "Settings",
                ),
              ]
          ),
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
