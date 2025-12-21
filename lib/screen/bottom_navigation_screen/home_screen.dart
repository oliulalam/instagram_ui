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
            SizedBox(height: 20,),
            //----------------USER POST-------------------------------
            UserPostCard(
              postProfile: 'assets/images/pexels-achraf210-3383361.jpg',
              postImage: 'assets/images/pexels-achraf210-3383361.jpg',
              numLikes: 1234,
              userName: 'Priya_gamra',
              subTitle: 'mile ho tum hum ko',
            ),
            UserPostCard(
              postProfile: 'assets/images/pexels-jill-wellington-1638660-3334355.jpg',
              postImage: 'assets/images/pexels-jill-wellington-1638660-3334355.jpg',
              numLikes: 5632,
              userName: 'jill-wellington',
              subTitle: 'ami taray taray rotiye dibo ',
            ),
            UserPostCard(
              postProfile: 'assets/images/pexels-dhanno-18885581.jpg',
              postImage: 'assets/images/pexels-dhanno-18885581.jpg',
              numLikes: 2234,
              userName: 'dhanno_jony',
              subTitle: 'bondhu tumi aiba re ',
            ),
            UserPostCard(
              postProfile: 'assets/images/pexels-darya-grey_owl-132130036-14884567.jpg',
              postImage: 'assets/images/pexels-darya-grey_owl-132130036-14884567.jpg',
              numLikes: 7564,
              userName: 'darya-grey',
              subTitle: 'bondhu tumi jhorer din er',
            ),
            UserPostCard(
              postProfile: 'assets/images/pexels-cottonbro-3171770.jpg',
              postImage: 'assets/images/pexels-cottonbro-3171770.jpg',
              numLikes: 2134,
              userName: 'cottonbro',
              subTitle: 'tumi amar jibon re bondhu',
            ),
            UserPostCard(
              postProfile: 'assets/images/pexels-bertellifotografia-1789427.jpg',
              postImage: 'assets/images/pexels-bertellifotografia-1789427.jpg',
              numLikes: 5675,
              userName: 'bertellifotografia',
              subTitle: 'this is not way to save me',
            ),
            UserPostCard(
              postProfile: 'assets/images/pexels-andersonguerra-1146505.jpg',
              postImage: 'assets/images/pexels-andersonguerra-1146505.jpg',
              numLikes: 4321,
              userName: 'andersonguerra',
              subTitle: 'your everything my heart',
            ),
            UserPostCard(
              postProfile: 'assets/images/pexels-alipazani-2878373.jpg',
              postImage: 'assets/images/pexels-alipazani-2878373.jpg',
              numLikes: 2543,
              userName: 'alipazani',
              subTitle: 'Jinde nihi mile gi 2 bara',
            ),
            UserPostCard(
              postProfile: 'assets/images/pexels-aldiq-2919625.jpg',
              postImage: 'assets/images/pexels-aldiq-2919625.jpg',
              numLikes: 434,
              userName: 'Aldig_alix',
              subTitle: 'din jay rat jay tumi aso na',
            ),

        
            
            
          ],
        ),
      ),
    );
  }
}
