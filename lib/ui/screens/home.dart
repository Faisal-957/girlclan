import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:girlsclan/core/constant/assets.dart';
import 'package:girlsclan/core/constant/text_style.dart';
import 'package:girlsclan/core/constant/widgets/homepage_wigets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 49,
                backgroundImage: AssetImage("$staticAssets/image2.png"),
              ),
              title: Text("Awais Khan"),
              subtitle: Text("peshawar pakistan"),
              trailing: Badge(child: Icon(Icons.notifications_none)),
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey[100],
                filled: true,
                suffixIcon: Image.asset("$staticAssets/Frame 43.png", scale: 3),
                hintText: "Search",
                prefixIcon: Image.asset("$staticAssets/search.png", scale: 3),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            ListTile(
              leading: Text("Upcoming Events", style: style24),
              trailing: Text(
                "View All",
                style: style24.copyWith(fontSize: 16, color: Color(0xff30D1CC)),
              ),
            ),
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
                    image: "$staticAssets/Frame45.png",
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
            ListTile(
              leading: Text("Top Picks", style: style24),
              trailing: Text(
                "View All",
                style: style24.copyWith(fontSize: 16, color: Color(0xff30D1CC)),
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Toppicks(image: "$staticAssets/all.png", title: "All"),
                  Toppicks(image: "$staticAssets/hike.png", title: "Hiking"),
                  Toppicks(image: "$staticAssets/music.png", title: "Music"),
                  Toppicks(image: "$staticAssets/all.png", title: "All"),
                  Toppicks(image: "$staticAssets/hike.png", title: "Hiking"),
                  Toppicks(image: "$staticAssets/music.png", title: "Music"),

                  SizedBox(
                    height: 150,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "$staticAssets/hike1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Toppicks extends StatelessWidget {
  final String image;
  final String title;

  const Toppicks({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 100,
      decoration: BoxDecoration(
        color: Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [Image.asset(image, scale: 4), Text(title)],
      ),
    );
  }
}
