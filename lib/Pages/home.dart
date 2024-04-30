import 'package:flutter/material.dart';
import 'package:quran_app/Shared/bottom_nav.dart';
import 'package:quran_app/Shared/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: AppDrawer(), // Include the drawer here
      body: BottomNavBar(), // Use BottomNavBar widget
    );
  }
}
