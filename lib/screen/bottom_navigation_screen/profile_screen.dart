import 'package:flutter/material.dart';
import 'package:instagram/domain/utils.dart';
import 'package:instagram/screen/tabs/post_screen.dart';
import 'package:instagram/screen/tabs/reels_screen.dart';
import 'package:instagram/screen/tabs/tag_screen.dart';
import 'package:instagram/widgets/story_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;

  List<String> postList = [
    "assets/images/u1.jpg",
    "assets/images/u2.jpg",
    "assets/images/u3.jpg",
    "assets/images/u4.jpg",
    "assets/images/u5.jpg",
    "assets/images/u6.jpg",
    "assets/images/u7.jpg",
    "assets/images/u8.jpg",
    "assets/images/u9.jpg",
    "assets/images/u10.jpg",
    "assets/images/u12.jpg",
    "assets/images/u13.jpg",
    "assets/images/uu.jpg",
    "assets/images/uu1.jpg",
    "assets/images/u1.jpg",
    "assets/images/u2.jpg",
    "assets/images/u3.jpg",
    "assets/images/u4.jpg",
    "assets/images/u5.jpg",
    "assets/images/u6.jpg",
    "assets/images/u7.jpg",
    "assets/images/u8.jpg",
    "assets/images/u9.jpg",
    "assets/images/u10.jpg",
    "assets/images/u12.jpg",
    "assets/images/u13.jpg",
    "assets/images/uu.jpg",
    "assets/images/uu1.jpg",
    "assets/images/u1.jpg",
    "assets/images/u2.jpg",
    "assets/images/u3.jpg",
    "assets/images/u4.jpg",
    "assets/images/u5.jpg",
    "assets/images/u6.jpg",
    "assets/images/u7.jpg",
    "assets/images/u8.jpg",
    "assets/images/u9.jpg",
    "assets/images/u10.jpg",
    "assets/images/u12.jpg",
    "assets/images/u13.jpg",
    "assets/images/uu.jpg",
    "assets/images/uu1.jpg",
    "assets/images/u1.jpg",
    "assets/images/u2.jpg",
    "assets/images/u3.jpg",
    "assets/images/u4.jpg",
    "assets/images/u5.jpg",
    "assets/images/u6.jpg",
    "assets/images/u7.jpg",
    "assets/images/u8.jpg",
    "assets/images/u9.jpg",
    "assets/images/u10.jpg",
    "assets/images/u12.jpg",
    "assets/images/u13.jpg",
    "assets/images/uu.jpg",
    "assets/images/uu1.jpg",
  ];
  List<String> reelsList = [
    "assets/images/u1.jpg",
    "assets/images/u2.jpg",
    "assets/images/u3.jpg",
    "assets/images/u4.jpg",
    "assets/images/u5.jpg",
    "assets/images/u6.jpg",
    "assets/images/u7.jpg",
    "assets/images/u8.jpg",
    "assets/images/u9.jpg",
    "assets/images/u10.jpg",
    "assets/images/u12.jpg",
    "assets/images/u13.jpg",
    "assets/images/uu.jpg",
    "assets/images/uu1.jpg",
    "assets/images/u1.jpg",
    "assets/images/u2.jpg",
    "assets/images/u3.jpg",
    "assets/images/u4.jpg",
    "assets/images/u5.jpg",
    "assets/images/u6.jpg",
    "assets/images/u7.jpg",
    "assets/images/u8.jpg",
    "assets/images/u9.jpg",
    "assets/images/u10.jpg",
    "assets/images/u12.jpg",
    "assets/images/u13.jpg",
    "assets/images/uu.jpg",
    "assets/images/uu1.jpg",
    "assets/images/u1.jpg",
    "assets/images/u2.jpg",
    "assets/images/u3.jpg",
    "assets/images/u4.jpg",
    "assets/images/u5.jpg",
    "assets/images/u6.jpg",
    "assets/images/u7.jpg",
    "assets/images/u8.jpg",
    "assets/images/u9.jpg",
    "assets/images/u10.jpg",
    "assets/images/u12.jpg",
    "assets/images/u13.jpg",
    "assets/images/uu.jpg",
    "assets/images/uu1.jpg",
    "assets/images/u1.jpg",
    "assets/images/u2.jpg",
    "assets/images/u3.jpg",
    "assets/images/u4.jpg",
    "assets/images/u5.jpg",
    "assets/images/u6.jpg",
    "assets/images/u7.jpg",
    "assets/images/u8.jpg",
    "assets/images/u9.jpg",
    "assets/images/u10.jpg",
    "assets/images/u12.jpg",
    "assets/images/u13.jpg",
    "assets/images/uu.jpg",
    "assets/images/uu1.jpg",
  ];
  List<String> tagList = [
    'assets/images/pexels-achraf210-3383361.jpg',
    'assets/images/pexels-aldiq-2919625.jpg',
    'assets/images/pexels-alipazani-2878373.jpg',
    'assets/images/pexels-andersonguerra-1146505.jpg',
    'assets/images/pexels-bertellifotografia-1789427.jpg',
    'assets/images/pexels-cottonbro-3171770.jpg',
    'assets/images/pexels-darya-grey_owl-132130036-14884567.jpg',
    'assets/images/pexels-dhanno-18885581.jpg',
    'assets/images/pexels-jill-wellington-1638660-3334355.jpg',
    'assets/images/pexels-jimmy-elizarraras-613804445-29939988.jpg',
    'assets/images/pexels-koolshooters-7143204.jpg',
    'assets/images/pexels-mahdi-chaghari-9996334-10222837.jpg',
    'assets/images/pexels-mastercowley-1300520.jpg',
    'assets/images/pexels-pixabay-36029.jpg',
    'assets/images/pexels-shiny-diamond-3762663.jpg',
  ];
  MediaQueryData? mqData;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      setState(() {}); // tab change হলে rebuild
    });
  }

  @override
  Widget build(BuildContext context) {

    mqData = MediaQuery.of(context);

    int currentIndex = _tabController.index;
    int listLength = 0;
    if (currentIndex == 0) {
      listLength = postList.length;
    } else if (currentIndex == 1) {
      listLength = reelsList.length;
    } else if (currentIndex == 2) {
      listLength = tagList.length;
    }
    ;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "priya_sharma",
          style: myTextStyle18(fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.alternate_email, size: 30, color: Colors.black),
          SizedBox(width: 16),
          Icon(Icons.add_circle_outline_rounded, size: 30, color: Colors.black),
          SizedBox(width: 16),
          Icon(Icons.menu, size: 30, color: Colors.black),
          SizedBox(width: 12),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/pexels-alipazani-2878373.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),

                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: ClipOval(
                                child: Container(
                                  decoration: BoxDecoration(color: Colors.blue),
                                  child: Icon(
                                    Icons.add,
                                    size: 28,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Priya",
                        style: myTextStyle15(
                          fontWeight: FontWeight.bold,
                          fontColor: Colors.grey.shade900,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Text(
                        '198',
                        style: myTextStyle22(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Post",
                        style: myTextStyle15(fontColor: Colors.grey.shade800),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '20K',
                        style: myTextStyle22(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Followers",
                        style: myTextStyle15(fontColor: Colors.grey.shade800),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Text(
                        '112',
                        style: myTextStyle22(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Followers",
                        style: myTextStyle15(fontColor: Colors.grey.shade800),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "👰Looking to enhance your Instagram presence in 2025? We have you covered with over 200 of the best Instagram bio ideas that will help boost your profile.🌹",
                style: myTextStyle18(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: mqData!.size.width,
                height: mqData!.size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black12,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Professional Dashboard",
                        style: myTextStyle18(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "70k views in the last 30 days",
                        style: myTextStyle18(),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Edit profile",
                        style: myTextStyle15(fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: Colors.white38,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Share profile",
                        style: myTextStyle15(fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: Colors.white38,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StoryCard(image: 'assets/images/u1.jpg', userName: 'Party'),
                    StoryCard(image: 'assets/images/u2.jpg', userName: 'Alone'),
                    StoryCard(
                      image: 'assets/images/u3.jpg',
                      userName: 'Family',
                    ),
                    StoryCard(image: 'assets/images/u4.jpg', userName: 'Heart'),
                    StoryCard(
                      image: 'assets/images/u5.jpg',
                      userName: 'Friends',
                    ),
                    StoryCard(
                      image: 'assets/images/u6.jpg',
                      userName: 'University',
                    ),
                    StoryCard(
                      image: 'assets/images/u7.jpg',
                      userName: 'Favorite',
                    ),
                    StoryCard(image: 'assets/images/u8.jpg', userName: 'Digha'),
                    StoryCard(
                      image: 'assets/images/u9.jpg',
                      userName: 'New Pic',
                    ),
                    StoryCard(
                      image: 'assets/images/u10.jpg',
                      userName: 'Shopping',
                    ),
                    StoryCard(image: 'assets/images/u11.jpg', userName: 'Food'),
                  ],
                ),
              ),
            ),

            TabBar(
              controller: _tabController,
              tabs: [
                Tab(icon: Icon(Icons.grid_on_rounded)),
                Tab(icon: Icon(Icons.ondemand_video_rounded)),
                Tab(icon: Icon(Icons.person_pin_outlined)),
              ],
            ),
            SizedBox(
              height: mqData!.size.height * (listLength / 16),
              child: TabBarView(
                controller: _tabController,
                children: [
                  PostScreen(postList: postList),
                  ReelsScreen(reelsList: reelsList),
                  TagScreen(tagList: tagList),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
