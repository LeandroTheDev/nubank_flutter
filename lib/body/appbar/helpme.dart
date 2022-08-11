import 'package:flutter/material.dart';

class Helpme extends StatelessWidget {
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.04,
          ),
          Row(
            children: [
              SizedBox(
                height: height * 0.12,
                width: width * 0.17,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close)),
              ),
              SizedBox(
                width: width * 0.22,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Me Ajuda',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Color.fromARGB(255, 223, 220, 220),
            ),
            width: width * 0.9,
            child: Row(
              children: [
                const Icon(Icons.search),
                const SizedBox(
                  height: 40,
                  width: 20,
                ),
                SizedBox(
                  height: 30,
                  width: width * 0.6,
                  child: const TextField(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          //Opções de ajuda
          SizedBox(
            width: width,
            height: height * 0.65,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //App Do Nubank
                  SizedBox(
                    width: width,
                    height: 100,
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      elevation: 2,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: SizedBox(
                                  width: width * 0.76,
                                  child: const Text(
                                    'App Do Nubank',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.1,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ],
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                              child: Text(
                                  'Saiba mais sobre o aplicativo plageado Nubank do Leandrim'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            
                  //Pix
                  SizedBox(
                    width: width,
                    height: 100,
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      elevation: 2,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: SizedBox(
                                  width: width * 0.76,
                                  child: const Text(
                                    'Pix',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.1,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ],
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                              child: Text(
                                  'Senhor leandro o bobo me disse que esta com duvidas sobre pix'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            
                  //Nubank Ultravioleta
                  SizedBox(
                    width: width,
                    height: 100,
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      elevation: 2,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: SizedBox(
                                  width: width * 0.76,
                                  child: const Text(
                                    'Nubank UltraVioleta',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.1,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ],
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                              child: Text('Conheça tudo sobre o cartão burgues'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            
                  //NuInvest
                  SizedBox(
                    width: width,
                    height: 100,
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      elevation: 2,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: SizedBox(
                                  width: width * 0.76,
                                  child: const Text(
                                    'NuInvest',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.1,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ],
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                              child: Text('Informações sobre o investimento'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            
                  //Debito Automatico
                  SizedBox(
                    width: width,
                    height: 100,
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      elevation: 2,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: SizedBox(
                                  width: width * 0.76,
                                  child: const Text(
                                    'Debito Automatico',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.1,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ],
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                              child: Text('Saiba mais sobre o debito automatico'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        

          const SizedBox(
            height: 20,
          ),

          //Converse Conosco
          Container(
              width: width * 0.9,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(185, 231, 229, 229),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.24,
                      ),
                      SizedBox(
                        width: width * 0.1,
                        child: const Icon(
                          Icons.chat,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.4,
                        child: const Text(
                          'Converse Conosco',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  )),
            ),
        ],
      ),
    );
  }
}
