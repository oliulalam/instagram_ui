import 'package:flutter/material.dart';

class ReelsScreen extends StatefulWidget {
  final List<String> reelsList;
  const ReelsScreen({super.key, required this.reelsList});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.reelsList.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4
        ),
        itemBuilder: (context, index){
        return SizedBox(
          height: 100,
          width: 100,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.reelsList[index]), fit: BoxFit.cover)
                ),

              ),
              Positioned(
                top: 0,
                right: 10,
                child: Image.asset("assets/icons/video (1).png", height: 30, width: 30,),
              ),
            ],
          ),
        );
        }
    );
  }
}
