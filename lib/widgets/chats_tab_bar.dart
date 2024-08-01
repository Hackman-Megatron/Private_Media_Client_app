import 'package:app_user/classes/colors_provider.dart';
import 'package:app_user/views/chats_screen.dart';
import 'package:app_user/views/communities_page.dart';
import 'package:app_user/views/groups_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatsTabBar extends StatefulWidget {
  const ChatsTabBar({super.key,});

  @override
  State<ChatsTabBar> createState() => _ChatsTabBarState();
}

class _ChatsTabBarState extends State<ChatsTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(175.0),
            child: AppBar(
              toolbarHeight: 100,
              automaticallyImplyLeading: false,
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discussions",
                      style: GoogleFonts.ptSans
                        (
                        textStyle: const TextStyle(
                          fontSize: 40,
                          color: ColorsProvider.primaryColor3,
                          fontWeight: FontWeight.bold
                        )
                      ),
                    ),
                  ],
                ),
              ),
              flexibleSpace: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TabBar(
                    indicatorColor: ColorsProvider.primaryColor1,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: ColorsProvider.secondaryColor1,
                      unselectedLabelColor: ColorsProvider.primaryColor1,
                      indicatorWeight: 5,
                      labelStyle: GoogleFonts.ptSans(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      tabs: const [
                        Tab(
                          text: "Chats",
                          height: 50,
                        ),
                        Tab(
                          text: "Groups",
                        ),
                        Tab(
                          text: "Forums",
                        ),
                      ]
                  )
                ],
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              ChatsScreen(),
              GroupsPage(),
              CommunitiesPage()
            ],
          ),
        )
    );
  }
}
