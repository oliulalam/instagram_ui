import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/ui_helper.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContent = [
    {
      "img": 'https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/133394/pexels-photo-133394.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/47547/squirrel-animal-cute-rodents-47547.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/34231/antler-antler-carrier-fallow-deer-hirsch.jpg'
    },
    {
      "img": 'https://images.pexels.com/photos/45853/grey-crowned-crane-bird-crane-animal-45853.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/1851164/pexels-photo-1851164.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/106685/pexels-photo-106685.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/75973/pexels-photo-75973.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/4588065/pexels-photo-4588065.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/56733/pexels-photo-56733.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/133394/pexels-photo-133394.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/460961/pexels-photo-460961.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/66258/staniel-cay-swimming-pig-seagull-fish-66258.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/3651618/pexels-photo-3651618.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/752035/pexels-photo-752035.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/634613/pexels-photo-634613.jpeg'
    },
    {
      "img": 'https://images.pexels.com/photos/320956/pexels-photo-320956.jpeg'
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
              //Fth Container end
            ],
          ),
          //Row End
          
          
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemCount: arrContent.length,
                itemBuilder: (context, index){
                  return Container(
                    height: 124,
                    width: 124,
                    decoration: BoxDecoration(),
                    child: Image.network(arrContent[index]['img'].toString(), fit: BoxFit.cover,),
                  );
                }),
          )
          
        ],
      ),
    );
  }
}
