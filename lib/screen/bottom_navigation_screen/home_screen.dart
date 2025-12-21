import 'package:flutter/material.dart';
import 'package:instagram/domain/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //-------------------APPBAR--------------------------------
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: myTextStyle28(
            fontFamily: 'secondary',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_rounded,
              size: 30,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 16),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/messenger.png',
              height: 28,
              width: 28,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),

      //-------------------BODY--------------------------------
      body: Column(
        children: [
          //-----------------Row--------------------------------
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/uu.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  
                  // add icon
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
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                            child: Icon(Icons.add, color: Colors.white, size: 28,)
                        ),
                      ),
                    ),
                  )
                  
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
