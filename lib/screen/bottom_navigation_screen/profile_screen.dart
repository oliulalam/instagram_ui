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
        title: Text(
          "priya_sharma",
          style: myTextStyle18(fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.alternate_email, size: 30, color: Colors.black),
          SizedBox(width: 16),
          Icon(Icons.add_circle_outline_rounded, size: 30, color: Colors.black),
          SizedBox(width: 16),
          Icon(Icons.menu, size: 30, color: Colors.black),
          SizedBox(width: 12),
        ],
      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/pexels-alipazani-2878373.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),

                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: ClipOval(
                            child: Container(
                              decoration: BoxDecoration(color: Colors.blue),
                              child: Icon(
                                Icons.add,
                                size: 28,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Priya",
                    style: myTextStyle15(
                      fontWeight: FontWeight.bold,
                      fontColor: Colors.grey.shade900,
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Text(
                    '198',
                    style: myTextStyle30(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Post",
                    style: myTextStyle18(fontColor: Colors.grey.shade800),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '20K',
                    style: myTextStyle30(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Followers",
                    style: myTextStyle18(fontColor: Colors.grey.shade800),
                  ),
                ],
              ),

              Column(
                children: [
                  Text(
                    '112',
                    style: myTextStyle30(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Followers",
                    style: myTextStyle18(fontColor: Colors.grey.shade800),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
