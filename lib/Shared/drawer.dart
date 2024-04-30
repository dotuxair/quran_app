import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green.shade600,
            ),
            child: const Text(
              "Profile Name",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Surah List'),
            leading: const Icon(Icons.list),
            onTap: () {
              // Handle navigation to Surah list
            },
          ),
          ListTile(
            title: const Text('Juz List'),
            leading: const Icon(Icons.format_list_numbered),
            onTap: () {
              // Handle navigation to Juz list
            },
          ),
          // Add more navigation items as needed
        ],
      ),
    );
  }
}
