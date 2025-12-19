import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/ui_helper.dart';

class HomeScreen extends StatelessWidget {
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
      ),
      body: Column(children: []),
    );
  }
}
