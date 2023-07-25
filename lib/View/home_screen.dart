import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:real/View/Main%20Screens/explore_screen.dart';

import '../Utils/app_styles.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Index handler..
  int _selectedIndex = 0;
  // List Of Screens..
  static final List<Widget> _widgetScreen = <Widget>[
    const ExploreScreen(),
    const Text("Search"),
    const Text("Your Property"),
    const Text("Comming Soon.."),
    const Text("Profile"),
  ];
  // Method For changing navigation bar screen..
  void _onItemTapped(int index) {
    setState(() {
       _selectedIndex = index;
    });
   
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetScreen[_selectedIndex]),
      // Navigation Bar..
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        elevation: 10,
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        selectedItemColor: Styles.darkPrimaryColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        unselectedItemColor: Colors.grey,
        items:  const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled), label: "Explore" ), 
             BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled), label: "Search" ),
             BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_building_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_building_filled), label: "Your Property" ),
            //TODO: Add One Type for navigation
             BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled), label: "Home" ),
             BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled), label: "Profile" ),

        ],
      ),
    );
  }
}