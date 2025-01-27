import 'package:flutter/material.dart';
import 'package:lesson9/direck.dart';
import 'package:lesson9/home.dart';
import 'package:lesson9/hw.dart';
import 'package:lesson9/hw2.dart';
import 'package:lesson9/hw3.dart';
import 'package:lesson9/lesson10.dart';
import 'package:lesson9/number.dart';
import 'package:lesson9/post.dart';
import 'package:lesson9/reclama.dart';
import 'package:lesson9/ui/profile_page.dart';
import 'package:lesson9/users.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
