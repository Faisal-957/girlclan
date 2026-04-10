import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Free extends StatelessWidget {
  const Free({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("assets/static_assets/hike1.png"),
            fit: BoxFit.cover,
          ),
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
                    child: Text(
                      "Hiking",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                Spacer(),

                // Title
                Text(
                  "Summit Seekers Trail\nChallenge",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 6),

                // Location + Joined + Date
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.white, size: 16),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        "Tofino, British Co ...",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "02/24 Joined",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),

                SizedBox(height: 4),

                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "02/04/2025",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
