import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/ui_helper.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContent = [
    {
      "img": ''
    },
    {
      "img": ''
    },
    {
      "img": ''
    },
    {
      "img": ''
    },
    {
      "img": ''
    },
    {
      "img": ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Container(
                height: 36,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFF262626),
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: UiHelper.CustomImage(imgUrl: "search_icon.png"),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0XFF8E8E93),
                      fontWeight: FontWeight.normal,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(width: 20),
              UiHelper.CustomImage(imgUrl: "live.png"),
            ],
          ),

          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 15),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.CustomImage(imgUrl: "ictv_Icon.png"),
                    SizedBox(width: 5),
                    Text(
                      "IGTV",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              //First Container end
              SizedBox(width: 5),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.CustomImage(imgUrl: 'shop.png'),
                    SizedBox(width: 5),
                    Text(
                      "Shop",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              // Second Container end
              SizedBox(width: 5),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Style",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              //Third Container end
              SizedBox(width: 5),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sports",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
              //Forth Container end
              SizedBox(width: 5),
              Container(
                height: 32,
                width: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Auto",
                      style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
