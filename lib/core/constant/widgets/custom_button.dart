import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:girlsclan/core/constant/text_style.dart';

class Custom_button extends StatelessWidget {
  final String title;

  final double height;
  final double witdh;
  final VoidCallback onTap;
  final Color? color;
  const Custom_button({
    super.key,
    required this.color,
    required this.height,
    required this.title,
    required this.witdh,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height,
        width: witdh,
        decoration: BoxDecoration(
          color: color ?? Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(title, style: style24.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
