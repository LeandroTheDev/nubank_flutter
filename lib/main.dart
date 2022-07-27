import 'package:flutter/material.dart';
import '/body/sideIcons.dart';
import '/body/appbar.dart';

//Inicialização
void main() {
  runApp(const NubankApp());
}

//Criação da inicizalização
class NubankApp extends StatelessWidget {
  const NubankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

//Corpo do Aplicativo
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    //Appbar
    final nuBar = AppBar(
      toolbarHeight: height * 0.18,
      backgroundColor: const Color.fromARGB(255, 126, 47, 179),
      actions: [NuBar(height, width)],
    );

    //Inicio do App
    return Scaffold(
        appBar: nuBar,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            Flexible(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      width: width * 0.3,
                      child: const Text(
                        'Conta',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.48,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_forward))
                ],
              ),
            ),

            //Construindo o dinheiro da conta
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    '200.00',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),

            const SizedBox(
              height: 25,
            ),

            //Chamando o sideicons
            Align(
              alignment: Alignment.centerLeft,
              child: SideIcons(width, height),
            ),

            const SizedBox(
              height: 25,
            ),

            //Meus Cartões
            Container(
              width: width * 0.9,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(185, 231, 229, 229),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.credit_score,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Meus Cartões',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  )),
            ),
            Card(
              elevation: 1,
              child: SizedBox(
                  width: width,
                  child: Column(
                    children: [
                      const Text('Cartão de Crédito'),
                      const Text('Fatura Atual'),
                      Text('50.00'),
                      Text('Limite disponivel de 1000'),
                      TextButton(
                          onPressed: () {}, child: Text('Parcelar compras')),
                    ],
                  )),
            ),
          ],
        ));
  }
}
