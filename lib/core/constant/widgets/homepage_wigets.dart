import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:girlsclan/core/constant/assets.dart';
import 'package:girlsclan/core/constant/text_style.dart' show style24;

class Events_Continer extends StatelessWidget {
  final String image;
  final String date;
  final String title;
  final String add;
  const Events_Continer({
    super.key,
    required this.image,
    required this.date,
    required this.title,
    required this.add,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: 300,

      decoration: BoxDecoration(
        color: Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Image.asset(image, scale: 3, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(date, style: style24.copyWith(fontSize: 10)),
                  5.verticalSpace,
                  Text(title, style: style24.copyWith(fontSize: 12)),
                  20.verticalSpace,
                  Text(add, style: style24.copyWith(fontSize: 10)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopContiner extends StatelessWidget {
  final String img;
  final String title;
  final String join;
  final String add;
  final String date;
  final String btext;

  TopContiner({
    super.key,
    required this.img,
    required this.title,
    required this.join,
    required this.add,
    required this.date,
    required this.btext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black.withOpacity(0.9)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Right Button
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(
                    color: Color(0xff30D1CC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(btext, style: TextStyle(color: Colors.white)),
                ),
              ),

              Spacer(),

              // Title
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 6),

              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.white, size: 16),
                  SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      add,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    join,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),

              SizedBox(height: 4),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  date,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
