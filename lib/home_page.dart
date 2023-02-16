import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:week_17_assessment_bottom_nav/profile_page.dart';
import 'package:week_17_assessment_bottom_nav/settings_page.dart';


import 'home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Application"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(FontAwesomeIcons.ellipsisVertical)
          )
        ],
      ),

      body: IndexedStack(
        children: [
          HomeScreen(),
          ProfilePage(),
          SettingsPage()
        ],
        index: _currentIndex,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.black,
        elevation: 5.0,

        onTap: (index){
          setState(()=> _currentIndex = index);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
            label: "Profile"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
            label: "Settings"
          )
        ],
      ),
    );
  }
}
