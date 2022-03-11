import 'package:flutter/material.dart';
import 'package:pomo_adoro/screens/home_screen.dart';
import 'package:pomo_adoro/screens/not_found_screen.dart';
import 'package:pomo_adoro/screens/user_perfil_screen.dart';
import 'package:pomo_adoro/utils/color.dart';
import 'package:pomo_adoro/widgets/bottom_navigation.dart';
import 'package:pomo_adoro/widgets/card_widget.dart';

class FavoriteRecipe extends StatelessWidget {
  const FavoriteRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: Center(
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Text(
              'PomoAdoro',
              style: TextStyle(fontFamily: 'OleoScript', color: primaryColor),
              textScaleFactor: 0.9,
            ),
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
                suffixIcon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NotFound()));
                  },
                  child: Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
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
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserPerfil(),
                  ),
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('images/p1.jpg'),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardWidget(),
                CardWidget(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardWidget(),
                CardWidget(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardWidget(),
                CardWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
