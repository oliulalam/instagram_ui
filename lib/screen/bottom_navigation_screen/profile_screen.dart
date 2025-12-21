import 'package:flutter/material.dart';
import 'package:instagram/domain/utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("priya_sharma", style: myTextStyle18(fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.alternate_email, size: 30,),
          SizedBox(width: 16,),
          Icon(Icons.add_circle_outline_rounded, size: 30,),
          SizedBox(width: 16,),
          Icon(Icons.menu),
          SizedBox(width: 12,),
        ],
      ),
    );
  }
}
