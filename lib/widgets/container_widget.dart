import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://st2.depositphotos.com/1006753/11231/i/450/depositphotos_112314680-stock-photo-traditional-spaghetti-bolognese.jpg')),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Text(
            "Espaguete à Bolonhesa",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "4.8",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Receita enviada por Eluide Sousa",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
