import 'package:flutter/material.dart';
import 'drawer.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            )
          ],
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text("Quran App"),
        ),
        drawer: const AppDrawer(), // Use the AppDrawer here
        body: IndexedStack(
          index: selectedPageIndex,
          children: const [
            Center(
              child: Text(
                'Home Page',
              ),
            ),
            Center(
              child: Text(
                'Quran Page',
              ),
            ),
            Center(
              child: Text(
                'Profile Page',
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.green.shade500,
          indicatorColor: Colors.green.shade700,
          selectedIndex: selectedPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              selectedPageIndex = index;
            });
          },
          destinations: <NavigationDestination>[
            NavigationDestination(
              icon: Image.asset('assets/home.png',
                  width: 20, height: 20), // Example path and dimensions
              label: 'Home',
            ),
            NavigationDestination(
              icon: Image.asset('assets/quran.png',
                  width: 20, height: 20), // Example path and dimensions
              label: 'Quran',
            ),
            NavigationDestination(
              icon: Image.asset('assets/profile.png',
                  width: 20, height: 20), // Example path and dimensions
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
