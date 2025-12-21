import 'package:flutter/material.dart';
import 'package:instagram/screen/bottom_navigation_screen/home_screen.dart';
import 'package:instagram/screen/bottom_navigation_screen/profile_screen.dart';
import 'package:instagram/screen/bottom_navigation_screen/reela_screen.dart';
import 'package:instagram/screen/bottom_navigation_screen/search_screen.dart';

class PostAddScreen extends StatefulWidget {
  const PostAddScreen({super.key});

  @override
  State<PostAddScreen> createState() => _PostAddScreenState();
}

class _PostAddScreenState extends State<PostAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Post Add Screen"),
      ),
    );;
  }
}
