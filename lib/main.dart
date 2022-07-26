import 'package:flutter/material.dart';
import 'appbar.dart';

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
      backgroundColor: const Color.fromARGB(255, 177, 50, 209),
      actions: [NuBar(height, width)],
    );

    //Inicio do App
    return Scaffold(
        appBar: nuBar,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Flexible(
                    child: SizedBox(
                      width: width * 0.40,
                      child: const Text(
                        'Conta',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.60,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_forward))
                ],
              ),
            )
          ],
        ));
  }
}
