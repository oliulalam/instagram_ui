import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/ui_helper.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

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
              SizedBox(width: 20,),
              UiHelper.CustomImage(imgUrl: "live.png")
            ],
          ),
        ],
      ),
    );
  }
}
