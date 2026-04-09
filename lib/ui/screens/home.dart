import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:girlsclan/core/constant/assets.dart';
import 'package:girlsclan/core/constant/text_style.dart';

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
                suffixIcon: Icon(Icons.filter_alt),
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
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

            Container(
              height: 88.h,
              width: 248.w,
              decoration: BoxDecoration(
                color: Color(0xffF7F7F7),
                image: DecorationImage(
                  image: AssetImage("$staticAssets/Frame45.png"),
                ),
              ),
              child: Column(children: [Text("12/08/2024")]),
            ),
          ],
        ),
      ),
    );
  }
}
