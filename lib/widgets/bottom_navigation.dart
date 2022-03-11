import 'package:flutter/material.dart';
import 'package:pomo_adoro/screens/create_recipe_screen.dart';
import 'package:pomo_adoro/screens/favorite_recipe_screen.dart';
import 'package:pomo_adoro/screens/home_screen.dart';
import 'package:pomo_adoro/screens/notification_screen.dart';
import 'package:pomo_adoro/screens/user_perfil_screen.dart';
import 'package:pomo_adoro/utils/color.dart';

class BottomWidget extends StatefulWidget {
  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => _widgetOptions[_selectedIndex]));
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    FavoriteRecipe(),
    CreateRecipe(),
    NotificationsScreen(),
    UserPerfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: primaryColor,
      unselectedItemColor: backgroundColor,
      selectedItemColor: secondaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
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
