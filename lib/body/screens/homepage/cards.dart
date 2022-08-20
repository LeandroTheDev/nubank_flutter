import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final double width;
  final double heightCard;

  const Cards(this.width, this.heightCard, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card( //Cartão de Credito
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
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 3),
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
                          child: const Text(
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
        Card( //Emprestimo
          child: SizedBox(
              width: width,
              height: heightCard * 0.7,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        'Empréstimo',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        'Você tem um emprestimo de 1 bilhão de dolares para pedir uma solicitação apenas de um clique',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(184, 107, 104, 104),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        Card( //Investimento
          child: SizedBox(
              width: width,
              height: heightCard * 0.9,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        'Investimento',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        'O jeitinho do Bobo de investir, gastar 500 horas no NFT worlds e a moeda falir logo em seguida',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(184, 107, 104, 104),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        height: 45,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(185, 231, 229, 229),
                        ),
                        child: Container(
                          width: width * 0.9,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(185, 231, 229, 229),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Icon(
                                      Icons.pie_chart_outline,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Meu Pedacinho do NuBank',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              )),
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
