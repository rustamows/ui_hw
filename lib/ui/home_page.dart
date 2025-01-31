import 'package:flutter/material.dart';
import 'package:lesson9/hw2.dart';
import 'package:lesson9/post.dart';
import 'package:lesson9/ui/menu_instagram.dart';
import 'package:lesson9/ui/post.dart';
import 'package:lesson9/ui/profile_page.dart';
import 'package:lesson9/ui/search.dart';

class MHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<MHomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: [MenuInstagram(), Search(),MPostPage(phone: '',),MPostPage(phone: '',),ProfilePage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.post_add_sharp), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.heart_broken), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person, ), label: '',),
        ],
      ),
    );
  }
}
