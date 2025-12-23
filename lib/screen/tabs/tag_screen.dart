import 'package:flutter/material.dart';

class TagScreen extends StatefulWidget {
  final List<String> tagList;
  const TagScreen({super.key, required this.tagList});

  @override
  State<TagScreen> createState() => _TagScreenState();
}

class _TagScreenState extends State<TagScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: widget.tagList.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (context, index){
            return SizedBox(
              height: 100,
              width: 100,
              child: Image.asset(
                widget.tagList[index],
                  fit: BoxFit.cover,
              ),
            );
          }
      ),
    );
  }
}
