import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:girlsclan/core/constant/assets.dart';
import 'package:girlsclan/core/constant/color.dart';
import 'package:girlsclan/core/constant/text_style.dart';
import 'package:girlsclan/core/constant/widgets/homepage_wigets.dart';
import 'package:girlsclan/ui/screens/home/homeviewmodel.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Homeviewmodel(),
      child: Consumer<Homeviewmodel>(
        builder: (vmcontext, value, child) => Scaffold(
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
                          backgroundImage: AssetImage(
                            "$staticAssets/image2.png",
                          ),
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
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: value.event.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Events_Continer(
                              image: value.event[index].image,
                              date: value.event[index].date,
                              title: value.event[index].title,
                              add: value.event[index].add,
                            ),
                          );
                        },
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
                        itemCount: value.toppic.length,
                        itemBuilder: (listContext, index) {
                          //final item = toppic[index];
                          return GestureDetector(
                            onTap: () {
                              value.selecteditem(index);
                            },
                            child: Toppicks(
                              image: value.toppic[index].image,
                              title: value.toppic[index].title,
                              isSelected: value.selectedIndex == index,
                            ),
                          );
                        },
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),

                      itemCount: value.topcon.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: TopContiner(
                            img: value.topcon[index].img,
                            title: value.topcon[index].title,
                            join: value.topcon[index].join,
                            add: value.topcon[index].add,
                            date: value.topcon[index].date,
                            btext: value.topcon[index].btext,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
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

  const Toppicks({
    super.key,
    required this.image,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 100,
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset(image, scale: 4), Text(title)],
      ),
    );
  }
}
