import 'package:flutter/foundation.dart';
import 'package:girlsclan/core/constant/assets.dart';
import 'package:girlsclan/core/constant/widgets/homepage_wigets.dart';
import 'package:girlsclan/ui/screens/home/home.dart';

class Homeviewmodel extends ChangeNotifier {
  final List<Toppicks> toppic = [
    Toppicks(image: "$staticAssets/all.png", title: "All", isSelected: false),
    Toppicks(
      image: "$staticAssets/hike.png",
      title: "Hiking",
      isSelected: false,
    ),
    Toppicks(
      image: "$staticAssets/music.png",
      title: "Music",
      isSelected: false,
    ),
    Toppicks(image: "$staticAssets/all.png", title: "All", isSelected: false),
    Toppicks(
      image: "$staticAssets/hike.png",
      title: "Hiking",
      isSelected: false,
    ),
    Toppicks(
      image: "$staticAssets/music.png",
      title: "Music",
      isSelected: false,
    ),
  ];
  final List<TopContiner> topcon = [
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
  ];
  final List<Events_Continer> event = [
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
  ];
  int selectedIndex = 0;

  void selecteditem(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
