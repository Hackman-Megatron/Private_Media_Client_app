import 'package:app_user/views/Settings_screen.dart';
import 'package:app_user/views/chats_screen.dart';
import 'package:app_user/views/communities_page.dart';
import 'package:app_user/views/groups_page.dart';
import 'package:app_user/views/notifications_screen.dart';
import 'package:app_user/views/publishing_screen.dart';
import 'package:app_user/widgets/bott_nav_bar.dart';
import 'package:app_user/widgets/chats_tab_bar.dart';
import 'package:flutter/material.dart';

import '../views/splash_screen.dart';
import '../views/start_screen.dart';
import '../views/sign_in_screen.dart';
import '../views/sign_up_screen.dart';
import '../views/resetting_screen.dart';
import '../views/home_screen.dart';

const String splashScreen = "The Splash Screen";
const String startScreen = "The Start Screen";
const String signInScreen = "The SignIn Screen";
const String signUpScreen = "The SignUp Screen";
const String resetScreen = "The Reset Password";

const String bottomNavBar = "The Bottom NavBar";
const String homeScreen = "The Home Screen";
const String discusses = "Discusses";
const String notificationPage = "notifications";
const String publishPage = "publisher";
const String settingsPage = "Settings";

const String chatPage = "chats";
const String groupsPage = "groups";
const String forumsPage = "Communities";






Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashScreen:
      return MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );
    case startScreen:
      return MaterialPageRoute(
        builder: (context) => const StartScreen(),
      );
    case signInScreen:
      return MaterialPageRoute(
        builder: (context) => const SignInScreen(),
      );
    case signUpScreen:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );
    case resetScreen:
      return MaterialPageRoute(
        builder: (context) => const ResettingScreen(),
      );
    case bottomNavBar:
      return MaterialPageRoute(
        builder: (context) => const BottNavBar(),
      );
    case homeScreen:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    case discusses:
      return MaterialPageRoute(
        builder: (context) => const ChatsTabBar(),
      );
    case publishPage:
      return MaterialPageRoute(
        builder: (context) => const PublishingScreen(),
      );
    case notificationPage:
      return MaterialPageRoute(
        builder: (context) => const NotificationsScreen(),
      );
    case settingsPage:
      return MaterialPageRoute(
        builder: (context) => const SettingsScreen(),
      );
    case chatPage:
      return MaterialPageRoute(
        builder: (context) => const ChatsScreen(),
      );
    case groupsPage:
      return MaterialPageRoute(
        builder: (context) => const GroupsPage(),
      );
    case forumsPage:
      return MaterialPageRoute(
        builder: (context) => const CommunitiesPage(),
      );
    default:
      throw ("the page you're looking for isn't defined");
  }
}
