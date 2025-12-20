import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 250),
            Image.asset('assets/icons/instagram.png', height: 100),

            Spacer(),

            Text("form", style: TextStyle(fontSize: 20, color: Colors.black54)),

            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/meta.png",
                    height: 50,
                    color: Colors.red,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Meta",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
