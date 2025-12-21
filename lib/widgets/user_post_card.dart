import 'package:flutter/material.dart';
import 'package:instagram/domain/utils.dart';

class UserPostCard extends StatefulWidget {
  const UserPostCard({super.key});

  @override
  State<UserPostCard> createState() => _UserPostCardState();
}

class _UserPostCardState extends State<UserPostCard> {
  MediaQueryData? mediaQueryData;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SizedBox(
      height: mediaQueryData!.size.height*0.8,
      child: Column(
        children: [
          ListTile(
            title: Text(
              'InstaBollywood',
              style: myTextStyle15(fontWeight: FontWeight.bold),
            ),
            leading: ClipOval(
              child: Image.asset(
                'assets/images/pexels-achraf210-3383361.jpg',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            subtitle: Text("music title"),
            trailing: Icon(Icons.more_vert),
          ),
          Image.asset(
            "assets/images/pexels-achraf210-3383361.jpg",
            height: 500,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          Row(
            children: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.favorite_border_rounded, size: 31,),
              ),
              Image.asset("assets/icons/chat (2).png", height: 25, width: 25,),
              SizedBox(width: 12,),
              Image.asset("assets/icons/send.png", height: 25, width: 25,),
            ],
          )
        ],
      ),
    );
  }
}
