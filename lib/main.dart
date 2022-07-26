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
      backgroundColor:const Color.fromARGB(255, 126, 47, 179),
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
            SizedBox(height: height * 0.03,),
            
            Align(
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //Área pix
                    SizedBox(width: width * 0.045,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                          radius: 30,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: const Icon(
                              Icons.pix,
                              color: Colors.black,
                              ),
                          ),
                        ),
                        const Text(
                          'Área Pix',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                      ],
                    ),
                    //Pagar
                    SizedBox(width: width * 0.02,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                          radius: 30,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: const Icon(
                              Icons.payment,
                              color: Colors.black,
                              ),
                          ),
                        ),
                        const Text(
                          'Pagar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    //Transferir
                    SizedBox(width: width * 0.02,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                          radius: 30,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: const Icon(
                              Icons.attach_money,
                              color: Colors.black,
                              ),
                          ),
                        ),
                        const Text(
                          'Transferir',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width * 0.02,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                          radius: 30,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: const Icon(
                              Icons.money,
                              color: Colors.black,
                              ),
                          ),
                        ),
                        const Text(
                          'Depositar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width * 0.02,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                          radius: 30,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: const Icon(
                              Icons.phone,
                              color: Colors.black,
                              ),
                          ),
                        ),
                        const Text(
                          'Recarga',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width * 0.02,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                          radius: 30,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: const Icon(
                              Icons.card_giftcard,
                              color: Colors.black,
                              ),
                          ),
                        ),
                        const Text(
                          'Cobrar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width * 0.02,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                          radius: 30,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: const Icon(
                              Icons.health_and_safety_rounded,
                              color: Colors.black,
                              ),
                          ),
                        ),
                        const Text(
                          'Doação',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width * 0.01,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                          radius: 30,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: const Icon(
                              Icons.wifi,
                              color: Colors.black,
                              ),
                          ),
                        ),
                        const Text(
                          'Internacional',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width * 0.01,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                          radius: 30,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: const Icon(
                              Icons.waterfall_chart_outlined,
                              color: Colors.black,
                              ),
                          ),
                        ),
                        const Text(
                          'Investir',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
