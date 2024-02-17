import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color.fromARGB(255, 0, 0, 0),
      unselectedItemColor: Color.fromARGB(255, 147, 147, 147),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: 4, //jika salah index bisa eror
      items: [
        //harus minimal 2 BottomNavigationBarItem, jika tidak eror
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home", // Empty string as label
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: "Search", // Empty string as label
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_call_outlined),
          label: "Reels", // Empty string as label
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop_2_outlined),
          label: "Shop", // Empty string as label
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: "Profile", // Empty string as label
        ),
      ],
    );
  }
}

