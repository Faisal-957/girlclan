import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            Image.asset(image, scale: 3),
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
