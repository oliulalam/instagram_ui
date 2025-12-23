import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  final List<String> postList;
  const PostScreen({super.key, required this.postList});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: widget.postList.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        //scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
        itemBuilder: (context, index) {
          return SizedBox(
            height: 100,
              width: 100,
              child: Image.asset(
                widget.postList[index],
                fit: BoxFit.cover,
              )
          );
        },
      ),
    );
  }
}
