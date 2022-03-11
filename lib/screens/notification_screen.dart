import 'package:flutter/material.dart';
import 'package:pomo_adoro/utils/color.dart';
import 'package:pomo_adoro/widgets/bottom_navigation.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(7),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/p1.jpg"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
                "Claudiane Silva , Luzinha e mais 46 pessoas favoritaram a sua “Tortelicia de maracujá”"),
            Divider(color: primaryColor, thickness: 2),
            Text(
                "Liz maria, Mateus Gôis e mais 390 pessoas favoritaram a sua “Coxinha com 3 ingredientes”"),
            Divider(color: primaryColor, thickness: 2),
            Text(
                "Liz maria, Mateus Gôis e mais 390 pessoas favoritaram a sua “Coxinha com 3 ingredientes”"),
            Divider(color: primaryColor, thickness: 2),
            Text(
                "Liz maria, Mateus Gôis e mais 390 pessoas favoritaram a sua “Coxinha com 3 ingredientes”"),
            Divider(color: primaryColor, thickness: 2),
          ],
        ),
      ),
    );
  }
}
