import 'package:flutter/material.dart';
import 'body/screens/homepage/sideicons.dart';
import 'body/screens/appbar/appbar.dart';
import 'body/screens/homepage/cards.dart';
import 'body/screens/appbar/addfriends.dart';

//Inicialização
void main() {
  runApp(NubankApp());
}

//Criação da inicizalização
class NubankApp extends StatefulWidget {
  NubankApp({Key? key}) : super(key: key);

  @override
  State<NubankApp> createState() => _NubankAppState();
}

class _NubankAppState extends State<NubankApp> {
  List<Friends> addedFriends = [];

  void _toggleFriend(Friends friend){

    setState(() {
      addedFriends.contains(friend) ? addedFriends.remove(friend) : addedFriends.add(friend);
    });
  }

  bool _isFriend(Friends friend){
    return addedFriends.contains(friend);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(255, 126, 47, 179),
            secondary: const Color.fromARGB(255, 126, 47, 179),
          ),
        ),
        home: Home(),

        //Criação de rotas para navegação
        routes: {
          '/friends-list': (context) => AppBarChanger(addedFriends),
          '/categories-friends': (context) => CategoriesFriendsScreen(),
          '/details-friends': (context) => DetailsFriendsScreen(_toggleFriend, _isFriend),
          '/configurations-drawer':(context) => const ConfigurationsDrawerScreen(),
        });
  }
}

//Corpo do Aplicativo
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  static bool swap = true;

  @override
  Widget build(BuildContext context) {
    //Responsividade
    double width = MediaQuery.of(context).size.width;
    double height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    double heightCard = 200;

    //Atualização
    onChange() {
      setState(() {
        HomeState.swap;
      });
    }

    Widget visibilityMoney = SizedBox(
      width: 40,
      child: HomeState.swap
          ? IconButton(
              onPressed: () {
                setState(() {
                  HomeState.swap = !HomeState.swap;
                });
              },
              icon: const Icon(Icons.remove_red_eye_outlined))
          : IconButton(
              onPressed: () {
                setState(() {
                  HomeState.swap = !HomeState.swap;
                });
              },
              icon: const Icon(Icons.remove_red_eye)),
    );

    Widget visibilityCredit = SizedBox(
        child: HomeState.swap
            ? const Text(
                '50.00',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            : const Text(
                '***',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ));

    Widget visibilityCreditOpen = SizedBox(
      child: HomeState.swap
          ? const Text(
              'Limite disponivel de 1000',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(184, 107, 104, 104),
              ),
            )
          : const Text(
              'Limite disponivel de ***',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(184, 107, 104, 104),
              ),
            ),
    );

    //Appbar
    final nuBar = SliverAppBar(
      toolbarHeight: height * 0.18,
      backgroundColor: const Color.fromARGB(255, 126, 47, 179),
      actions: [NuBar(height, width, visibilityMoney)],
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
            const SizedBox(height: 30),

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
                SizedBox(width: width * 0.48),
                IconButton(
                    onPressed: () {
                      onChange();
                      print(HomeState.swap);
                    },
                    icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),

            //Construindo o dinheiro da conta
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: HomeState.swap
                      ? const Text(
                          '200.00',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : const Text(
                          '***',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                )),

            const SizedBox(height: 25),

            //Chamando o sideicons
            Align(
              alignment: Alignment.centerLeft,
              child: SideIcons(width, height),
            ),

            const SizedBox(height: 25),

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

            const SizedBox(height: 40),

            Cards(width, heightCard, visibilityCredit, visibilityCreditOpen),
          ],
        ),
      ),
    ));
  }
}
