import 'package:flutter/material.dart';
import 'package:instagram/domain/utils.dart';

class StoryCard extends StatefulWidget {
   StoryCard({super.key, required this.image, required this.userName,});

  String userName;
  String image;

  @override
  State<StoryCard> createState() => _StoryCardState();
}

class _StoryCardState extends State<StoryCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.red,
                      Colors.orange,
                      Colors.yellow,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                ),
                border: Border.all(
                    width: 3,
                    color: Colors.red
                ),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //--------------------Text-----------------------------]
          Text(widget.userName,
          style: myTextStyle15(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
