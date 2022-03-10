import 'package:flutter/material.dart';
import 'package:pomo_adoro/utils/color.dart';

class BottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: primaryColor,
      unselectedItemColor: backgroundColor,
      selectedItemColor: secondaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.home),
          backgroundColor: Color(0xFFF96241),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.favorite_outline),
          backgroundColor: Color(0xFFF96241),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.add_circle_outline,
            size: 30,
          ),
          backgroundColor: Color(0xFFF96241),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.notifications_outlined),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.person_rounded),
          backgroundColor: Color(0xFFF96241),
        )
      ],
    );
  }
}
