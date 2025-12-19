import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Heart/heart_screen.dart';
import 'package:instagram/Post/post_screen.dart';
import 'package:instagram/Profile/profile_screen.dart';
import 'package:instagram/Search/search_screen.dart';
import 'package:instagram/screen/Home/home_screen.dart';
import 'package:instagram/widgets/ui_helper.dart';

class BottomNavScreen extends StatefulWidget{
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages =[
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    HeartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 30,), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.plus_app, size: 30,), label: 'Post'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart, size: 30,), label: 'Heart'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person, size: 30,), label: 'Profile'),
        ],
      ),
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
    );
  }
}