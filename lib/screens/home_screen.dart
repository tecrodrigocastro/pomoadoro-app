import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:pomo_adoro/utils/color.dart';
import 'package:pomo_adoro/widgets/bottom_navigation.dart';
import 'package:pomo_adoro/widgets/card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomWidget(),
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: Center(
          child: Text(
            'PomoAdoro',
            style: TextStyle(fontFamily: 'OleoScript', color: primaryColor),
            textScaleFactor: 0.9,
          ),
        ),
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  color: primaryColor,
                ),
                hintText: 'Bolo de Chocolate',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(7),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/p1.jpg'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("#fitness"),
                  Text("#massas"),
                  Text("#doces"),
                  Text("#veganos"),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                " Os queridinhos do \n momento!",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardWidget(),
                  CardWidget(),
                ],
              ),
            ),
            Text(
                " Tendencias!",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardWidget(),
                  CardWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
