import 'package:flutter/material.dart';

class ReelaScreen extends StatefulWidget {
  const ReelaScreen({super.key});

  @override
  State<ReelaScreen> createState() => _ReelaScreenState();
}

class _ReelaScreenState extends State<ReelaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Reels Screen"),
      ),
    );;
  }
}
