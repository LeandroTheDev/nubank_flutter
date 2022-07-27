import 'package:flutter/material.dart';

class Cards extends StatelessWidget {

  final double width;
  final double heightCard;

  Cards(this.width, this.heightCard);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 200,
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
              width: width,
              height: heightCard,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        'Cartão de Crédito',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        'Fatura Atual',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(184, 107, 104, 104),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        '50.00',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        'Limite disponivel de 1000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(184, 107, 104, 104),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Container(
                        height: 35,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(185, 231, 229, 229),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Parcelar compras',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
