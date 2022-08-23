import 'package:flutter/material.dart';
import 'body/screens/homepage/sideicons.dart';
import 'body/screens/appbar/appbar.dart';
import 'body/screens/homepage/cards.dart';
import 'body/screens/appbar/addfriends.dart';

//Inicialização
void main() {
  runApp(const NubankApp());
}

//Criação da inicizalização
class NubankApp extends StatelessWidget {
  const NubankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Home(),

      //Criação de rotas para navegação
      routes: {
        '/categories-friends': (context) =>  CategoriesFriendsScreen(),
      }
    );
  }
}

//Corpo do Aplicativo
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    //Responsividade
    double width = MediaQuery.of(context).size.width;
    double height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    double heightCard = 200;

    //Atualização
    onChange(){
      setState(() {
      NuBarState.swap;
      });
    }

    //Appbar
    final nuBar = SliverAppBar(
      toolbarHeight: height * 0.18,
      backgroundColor: const Color.fromARGB(255, 126, 47, 179),
      actions: [NuBar(height, width)],
    );

    //Inicio do App
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: ((context, innerBoxIsScrolled) => [
            nuBar,
          ]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),

            //Conta
            Row(
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
                    onPressed: () {
                      print(onChange());
                    },
                    icon: const Icon(Icons.refresh))
              ],
            ),

            //Construindo o dinheiro da conta
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: NuBarState.swap
                      ? Text(
                          '200.00',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : Text(
                          '***',
                          style: const TextStyle(
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
            const SizedBox(
              height: 40,
            ),

            Cards(width, heightCard),
          ],
        ),
      ),
    ));
  }
}
