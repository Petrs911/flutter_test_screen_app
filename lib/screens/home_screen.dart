import 'package:flutter/material.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_test_screen_app/screens/pages/chat_page.dart';
import 'package:flutter_test_screen_app/screens/pages/friends_page.dart';
import 'package:flutter_test_screen_app/screens/pages/home_page.dart';
import 'package:flutter_test_screen_app/screens/pages/message_page.dart';
import 'package:flutter_test_screen_app/screens/pages/search_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(initialIndex: 2, length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TabBarView(
          controller: _controller,
          children: [
            MessagePage(),
            SearchPage(),
            HomePage(),
            ChatPage(),
            FriendsPage(),
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar.badge(
        {2: ''},
        controller: _controller,
        curveSize: 20,
        backgroundColor: Colors.white,
        elevation: 0,
        items: _tabItems,
      ),
    );
  }
}

const _tabItems = [
  TabItem(
    icon: Icon(Icons.email),
    activeIcon: Icon(Icons.email, size: 40),
  ),
  TabItem(
    icon: Icon(Icons.search),
    activeIcon: Icon(Icons.search, size: 40),
  ),
  TabItem(
    icon: Icon(Icons.camera),
    activeIcon: Icon(Icons.camera, size: 40, color: Colors.purple),
  ),
  TabItem(
    icon: Icon(Icons.message_rounded),
    activeIcon: Icon(Icons.message_rounded, size: 40),
  ),
  TabItem(
    icon: Icon(Icons.person_outline),
    activeIcon: Icon(Icons.person_outline, size: 40),
  ),
];
