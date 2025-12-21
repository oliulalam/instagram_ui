import 'package:flutter/material.dart';
import 'package:instagram/domain/utils.dart';
import 'package:instagram/widgets/story_card.dart';
import 'package:instagram/widgets/user_post_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MediaQueryData? mqData;
  @override
  Widget build(BuildContext context) {
    mqData = MediaQuery.of(context);
    return Scaffold(
      //-------------------APPBAR--------------------------------
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: myTextStyle28(
            fontFamily: 'secondary',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_rounded,
              size: 30,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 16),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/messenger.png',
              height: 28,
              width: 28,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),

      //-------------------BODY--------------------------------
      body: SingleChildScrollView(
        child: Column(
          children: [
            //-----------------Row--------------------------------
            SizedBox(
              height: mqData!.size.width*0.34,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // YOUR STRORY
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/uu.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
        
                              // add icon
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: ClipOval(
                                    child: Container(
                                      decoration: BoxDecoration(color: Colors.blue),
                                      child: Icon(Icons.add, color: Colors.white, size: 28),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text("Your Story", style: myTextStyle15(fontWeight: FontWeight.bold),)
                        ],
                      ),
                      //-------------------------SHOW STORY CARD
                      StoryCard(
                        userName: 'Priya_queen',
                        image: 'assets/images/pexels-cottonbro-3171770.jpg',
                      ),
        
                      StoryCard(
                        userName: 'Jimmy_eliz',
                        image: 'assets/images/pexels-jimmy-elizarraras-613804445-29939988.jpg',
                      ),
        
                      StoryCard(
                        userName: 'Mehdi_chag',
                        image: 'assets/images/pexels-mahdi-chaghari-9996334-10222837.jpg',
                      ),
        
                      StoryCard(
                        userName: 'Shiny_diam',
                        image: 'assets/images/pexels-shiny-diamond-3762663.jpg',
                      ),
        
                      StoryCard(
                        userName: 'Aldiq_alex',
                        image: 'assets/images/pexels-aldiq-2919625.jpg',
                      ),
        
                      StoryCard(
                        userName: 'alipazani',
                        image: 'assets/images/pexels-alipazani-2878373.jpg',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            //---------------Suggest title older post Title ---------------------
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Suggested for you", style: myTextStyle18(fontWeight: FontWeight.bold),),
                  Text("Older posts", style: myTextStyle15(fontColor: Colors.blue),)
                ],
              ),
            ),
        
            //----------------USER POST-------------------------------
            UserPostCard(),
        
            
            
          ],
        ),
      ),
    );
  }
}
