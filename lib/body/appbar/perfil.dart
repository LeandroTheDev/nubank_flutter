import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 220, 220),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.04,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close)),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    padding: const EdgeInsets.all(13),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 160, 73, 218),
                    ),
                    child: const Icon(Icons.person, color: Colors.white)),
              ),
              const Text(
                'Bobo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: SizedBox(
              width: width * 0.9,
              child: const Text(
                'Agencia 210321 conta 23333, Bobo Dev, o melhor de todos sem comparação, Banco 2190 Nu Pagamentos S.A',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          
          SizedBox( //Me ajuda
            width: width,
            height: height * 0.1,
            child:  Card(
              margin: const EdgeInsets.symmetric(vertical: 1),
              elevation: 2,
              child: Row( 
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.question_mark_rounded),
                  ),
                  Text('Me Ajuda'),
                ],
              ),
            ),
          ),
          SizedBox( //Editar dados do perfil
            width: width,
            height: height * 0.1,
            child:  Card(
              margin: const EdgeInsets.symmetric(vertical: 1),
              elevation: 2,
              child: Row( 
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.person_pin_outlined),
                  ),
                  Text('Editar Dados do Perfil'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
