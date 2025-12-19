import 'package:flutter/material.dart';
import 'package:instagram/screen/splash/splash_screen.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram",
      theme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}
