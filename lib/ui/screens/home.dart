import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:girlsclan/core/constant/assets.dart';
import 'package:girlsclan/core/constant/color.dart';
import 'package:girlsclan/core/constant/text_style.dart';
import 'package:girlsclan/core/constant/widgets/homepage_wigets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Toppicks> toppic = [
    Toppicks(image: "$staticAssets/all.png", title: "All", isSelected: false),
    Toppicks(image: "$staticAssets/hike.png", title: "Hiking", isSelected: false),
    Toppicks(image: "$staticAssets/music.png", title: "Music", isSelected: false),
    Toppicks(image: "$staticAssets/all.png", title: "All", isSelected: false),
    Toppicks(image: "$staticAssets/hike.png", title: "Hiking", isSelected: false),
    Toppicks(image: "$staticAssets/music.png", title: "Music", isSelected: false),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("$staticAssets/image2.png"),
                    ),
                    Column(
                      children: [
                        Text(
                          "Awais Khan",
                          style: style24.copyWith(fontSize: 16),
                        ),
                        Row(
                          children: [
                            20.horizontalSpace,
                            Icon(Icons.location_on, color: Colors.black),
                            Text("Tofino, British Co ..."),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Badge(child: Icon(Icons.notifications_none)),
                  ],
                ),
                10.verticalSpace,
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[100],
                    filled: true,
                    suffixIcon: Image.asset(
                      "$staticAssets/Frame 43.png",
                      scale: 3,
                    ),
                    hintText: "Search",
                    prefixIcon: Image.asset(
                      "$staticAssets/search.png",
                      scale: 3,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                15.verticalSpace,
                ListTile(
                  leading: Text("Upcoming Events", style: style24),
                  trailing: Text(
                    "View All",
                    style: style24.copyWith(
                      fontSize: 16,
                      color: Color(0xff30D1CC),
                    ),
                  ),
                ),
                10.verticalSpace,

                SizedBox(
                  height: 120,

                  child: ListView(
                    //padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Events_Continer(
                        image: "$staticAssets/Frame45.png",
                        date: "12/08/2024",
                        title: "Wanderlight Festival",
                        add: "Tofino, British Co ...",
                      ),
                      Events_Continer(
                        image: "$staticAssets/image4.png",
                        date: "12/08/2024",
                        title: "Wanderlight Festival",
                        add: "Tofino, British Co ...",
                      ),
                      Events_Continer(
                        image: "$staticAssets/Frame45.png",
                        date: "12/08/2024",
                        title: "Wanderlight Festival",
                        add: "Tofino, British Co ...",
                      ),
                    ],
                  ),
                ),
                10.verticalSpace,
                ListTile(
                  leading: Text("Top Picks", style: style24),
                  trailing: Text(
                    "View All",
                    style: style24.copyWith(
                      fontSize: 16,
                      color: Color(0xff30D1CC),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: toppic.length,
                    itemBuilder: (context, index) {
                      //final item = toppic[index];
                      return  GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Toppicks(
          image: toppic[index].image,
          title: toppic[index].title,
          isSelected: selectedIndex == index,
        ),
      );
                    },
                  ),
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),

                  children: [
                    TopContiner(
                      img: "$staticAssets/hike1.png",
                      title: "Summit Seekers Trail Challenge",
                      join: "02/24 Joined",
                      add: "Tofino, British Co ...",
                      date: "02/04/2025",
                      btext: "Hiking",
                    ),
                    TopContiner(
                      img: "$staticAssets/party.png",
                      title: "lets go for party",
                      join: "02/24 Joined",
                      add: "Tofino, British Co ...",
                      date: "02/04/2025",
                      btext: "Party ",
                    ),
                    TopContiner(
                      img: "$staticAssets/hike1.png",
                      title: "Summit Seekers Trail Challenge",
                      join: "02/24 Joined",
                      add: "Tofino, British Co ...",
                      date: "02/04/2025",
                      btext: "Hiking",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Toppicks extends StatelessWidget {
  final String image;
  final String title;
  final bool isSelected;

  const Toppicks({super.key, required this.image, required this.title,required this.isSelected
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 100,
      decoration: BoxDecoration(
        color: isSelected  ? Colors.blue : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset(image, scale: 4), Text(title)],
      ),
    );
  }
}
