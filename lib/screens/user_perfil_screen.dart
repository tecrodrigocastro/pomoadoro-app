import 'package:flutter/material.dart';
import 'package:pomo_adoro/screens/not_found_screen.dart';
import 'package:pomo_adoro/utils/color.dart';

class UserPerfil extends StatelessWidget {
  const UserPerfil({Key? key}) : super(key: key);

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
            child: IconButton(
              color: Colors.black,
              iconSize: 30,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NotFound()));
              },
              icon: Icon(Icons.help_outline),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(95),
                    image: DecorationImage(
                      image: AssetImage("images/p1.jpg"),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt_rounded,
                                color: backgroundColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Rodrigo Castro",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: primaryColor,
                    size: 25,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                        "Garoto de programa(de computador), gosto de levantar uns pesos na academia, gamer..."),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 25,
                ),
                Text(
                  "542",
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.favorite_outline,
                  color: Colors.red,
                  size: 25,
                ),
                Text(
                  "327",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Estrelas recebidas"),
                Text("Salvamentos"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
