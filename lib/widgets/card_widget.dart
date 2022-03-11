import 'package:flutter/material.dart';
import 'package:pomo_adoro/screens/detail_screen.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetailScreen()));
        },
        child: Card(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.32,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.scaleDown,
                alignment: Alignment.topCenter,
                image: NetworkImage(
                  'http://www.cozinhadoipe.com.br/wp-content/uploads/2016/05/SV1.jpg',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.130,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Suco verde',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star_half,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  Text(
                    "Suco verde antioxidante de alface,  banana, abacate e laranja",
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
