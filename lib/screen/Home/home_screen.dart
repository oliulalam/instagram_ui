import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/ui_helper.dart';

class HomeScreen extends StatelessWidget {
  var arrContent = [
    {
      "img": 'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg',
      "name": 'Your Story',
    },

    {
      "img": 'https://images.pexels.com/photos/769772/pexels-photo-769772.jpeg',
      "name": 'karennne',
    },

    {
      "img": 'https://images.pexels.com/photos/47080/boy-african-africa-child-47080.jpeg',
      "name": 'zackjohn',
    },

    {
      "img": 'https://images.pexels.com/photos/818261/pexels-photo-818261.jpeg',
      "name": 'kieron_d',
    },

    {
      "img": 'https://images.pexels.com/photos/4355346/pexels-photo-4355346.jpeg',
      "name": 'craig_love',
    },

    {
      "img": 'https://images.pexels.com/photos/35233290/pexels-photo-35233290.jpeg',
      "name": 'Asad',
    },

    {
      "img": 'https://images.pexels.com/photos/2097475/pexels-photo-2097475.jpeg',
      "name": 'Fahim',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black12,
        leading: UiHelper.CustomImage(imgUrl: "camera.png"),
        title: UiHelper.CustomImage(imgUrl: "instagram_logo_mini.png"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: UiHelper.CustomImage(imgUrl: "tv.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: UiHelper.CustomImage(imgUrl: "messanger.png"),
          ),
        ],
      ),//AppBar
      body: Column(
          children: [
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: arrContent.length,
                    itemBuilder: (context, index){
                      return CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(arrContent[index]["img"].toString()),
                      );
                    }
                ),
              ),
            ),//ListView

            SizedBox(
              height: 30,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: arrContent.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(arrContent[index]["name"].toString(), style: TextStyle(fontSize: 12),),
                    );
                  },
                ),
              ),
            )

          ]
      ),

    );
  }
}
