import 'package:flutter/material.dart';
import 'package:simponi/view/home/profile_page.dart';

class WrapperPage extends StatelessWidget {
  const WrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ProfilePage(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Theme.of(context).colorScheme.surfaceVariant,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.person),
            ),
            label: "Profil",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.search),
            ),
            label: "Cari",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.work),
            ),
            label: "Lowongan",
          ),
        ],
      ),
    );
  }
}
