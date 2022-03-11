import 'package:flutter/material.dart';
import 'package:pomo_adoro/utils/color.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "n",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 80,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/tomate.png"),
                    ),
                  ),
                ),
                Text(
                  "t",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 80,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "found!",
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 80),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Text("Não foi dessa vez, a receita não está disponivel! Você tem uma receita desse prato? Compartilha com a gente!  ;)"),
            ),
          ],
        ),
      ),
    );
  }
}
