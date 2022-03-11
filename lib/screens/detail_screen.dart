import 'package:flutter/material.dart';
import 'package:pomo_adoro/utils/color.dart';
import 'package:pomo_adoro/widgets/container_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            ContainerWidget(),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.timer),
                      Text(
                        " 40 à 30min ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(Icons.dining_sharp),
                      Text(
                        " 2 porções ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Text(
                        " 99",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "250 g de macarrão espaguete \n350 g de coxão mole ou contra filé\n 6 tomates bem maduros\n 1 xícara de molho de tomate refogado\n 1/2 cebola\n 2 dentes de alho\n Azeite\n Manjericão ou manjerona\n Salsa",
                  ),
                  Text(
                    "Espaguete e molho:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "Cozinhe o macarrão al dente. Pique os tomates em cubos grandes, coloque em uma panela com um pouco de água (até o meio dos tomates) deixe cozinhar para que amoleça por completo e desmanche na panela, reserve. Refogue a cebola o alho e o sal adicionando o molho de tomate, até começar a ferver. Bata no liquidificador os tomates ao ponto de ficarem fácil de peneirar, passe numa peneira para tirar o excesso de pele e sementes que sobraram, Junte ao molho e cozinhe em fogo médio por 25 minutos, adicione sal se necessário, mexa sempre.",
                    //textAlign: TextAlign.justify,
                  ),
                  const Text(
                    "Carne:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                      "Pique toda a carne em pequenos pedacinhos, refogue com alho e sal até dourar (aqueça bem o alho antes, para não soltar muita água), junte ao molho e termine o cozimento por mais 10 minutos, monte o prato decorando com bastante queijo parmesão."),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Avalie essa receita ;)"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
