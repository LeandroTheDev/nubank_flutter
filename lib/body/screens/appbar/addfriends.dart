import 'package:flutter/material.dart';

//Criação das categorias
class Category {
  final String id;
  final String title;
  final Color color;

  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}

//Dados das cidades
const templateCategories = [
  Category(
    id: 'SC',
    title: 'Santa Catarina',
    color: Color.fromARGB(255, 126, 47, 179),
  ),
  Category(
    id: 'RJ',
    title: 'Rio de Janeiro',
    color: Color.fromARGB(255, 126, 47, 179),
  ),
  Category(
    id: 'SP',
    title: 'São Paulo',
    color: Color.fromARGB(255, 126, 47, 179),
  ),
  Category(
    id: 'RS',
    title: 'Rio Grande do Sul',
    color: Color.fromARGB(255, 126, 47, 179),
  ),
  Category(
    id: 'MG',
    title: 'Minas Gerais',
    color: Color.fromARGB(255, 126, 47, 179),
  ),
  Category(
    id: 'AC',
    title: 'Acre',
    color: Color.fromARGB(255, 126, 47, 179),
  ),
  Category(
    id: 'MT',
    title: 'Mato Grosso',
    color: Color.fromARGB(255, 126, 47, 179),
  ),
  Category(
    id: 'MS',
    title: 'Mato Grosso Do Sul',
    color: Color.fromARGB(255, 126, 47, 179),
  ),
  Category(
    id: 'ES',
    title: 'Espirito Santo',
    color: Color.fromARGB(255, 126, 47, 179),
  ),
  Category(
    id: 'BA',
    title: 'Bahia',
    color: Color.fromARGB(255, 126, 47, 179),
  ),
];

//Criação dos amigos
class Friends {
  final String id;
  final String name;
  final int age;
  final String description;
  final String city;
  final String imageUrl;

  const Friends({
    required this.id,
    required this.name,
    required this.age,
    required this.description,
    required this.city,
    required this.imageUrl,
  });
}

//Dados dos amigos
const templateFriends = [
  Friends(
    id: 'SC',
    name: 'BoboDev',
    age: 20,
    description:
        'Simplesmente o BoboDev, o melhor e mais prepotente jogador de GangPlanks, o melhor programador de todos os tempos.',
    city: 'Joinvas',
    imageUrl:
        'https://scontent.fbnu5-1.fna.fbcdn.net/v/t39.30808-6/131515347_361757075484186_7279731453872224817_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=174925&_nc_eui2=AeF6wiwLznuNvxJSCdmojWvqKMBT8G0pyIQowFPwbSnIhB9aLaAeRP6VSZDN0MUwzox386_94rAQt6EgkFb4baYy&_nc_ohc=QI-7AagWg2wAX-HNTpl&_nc_zt=23&_nc_ht=scontent.fbnu5-1.fna&oh=00_AT_GUf3Qni8XGWXGcb2E707gCfMAgWhxymHbOJyDbl_QsA&oe=63092E62',
  ),
  Friends(
    id: 'RS',
    name: 'YollaraDev',
    age: 29,
    description: 'A mais linda de todas',
    city: 'Não lembro',
    imageUrl:
        'https://scontent.fbnu5-1.fna.fbcdn.net/v/t39.30808-6/275388413_507922184291127_7164133995144990640_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGnSFiKyeruXgJ7ZTLUxje9BjIJb2FbELkGMglvYVsQua06PCg3sWP0IYtGlmEBy3jfZ3iJNJAAOuxaKBYVCapL&_nc_ohc=jtrrZECF4HYAX-YOZ6t&tn=eLbTe2I-Uef0dWo2&_nc_zt=23&_nc_ht=scontent.fbnu5-1.fna&oh=00_AT_KxKFvR3vvondN_jqVp87esKUgq_R1VwMHbP9AftBAUw&oe=630A0472',
  ),
  Friends(
    id: 'SC',
    name: 'Vinicim',
    age: 19,
    description:
        'Oi sou o vinicius, sou indefeso, ruim no lolzinho, gosto do sexo masculino, mas prefiro não dizer sobre isso aos meus amigos, espero que me entenda e que possamos ser amigos. :)',
    city: 'Joinvas',
    imageUrl:
        'https://www.girodoboi.com.br/wp-content/uploads/2022/07/texas_longhorn_08.07.2022.jpg',
  ),
  Friends(
    id: 'MG',
    name: 'Rochelem',
    age: 21,
    description: 'Corno',
    city: 'Cascaneias',
    imageUrl:
        'https://static.wikia.nocookie.net/breakingbad/images/8/8e/BCS_S6_Portrait_Jimmy.jpg/revision/latest?cb=20220802210840',
  ),
  Friends(
    id: 'MS',
    name: 'Elem Lixeira',
    age: 19,
    description: 'Careca TV',
    city: 'Nova Andradinas',
    imageUrl:
        'https://scontent.fbnu5-1.fna.fbcdn.net/v/t39.30808-6/294550531_3270835949908048_7825366661780299943_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFB7595nGzIaad1ouv1fJ31kys9YjJTYsWTKz1iMlNixSx2gadCILis-S1r1hfHnRTmg4s9Q9ec8U66wnu_vAcZ&_nc_ohc=u21MNSB6958AX9sepdE&_nc_zt=23&_nc_ht=scontent.fbnu5-1.fna&oh=00_AT9ng5dYk_9gMr48x0lUK1EKqeGG8TO5NkdFx8hK0KK3HQ&oe=630BEA84',
  ),
];

class AppBarChanger extends StatelessWidget {
  const AppBarChanger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const FriendDrawner(),
        appBar: AppBar(
          title: Row(
            children: [
              const Text("Amigos"),

              const SizedBox(width: 200),

              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
              )
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 126, 47, 179),
          bottom: const TabBar(
            indicatorColor: Colors.purple,
            tabs: [
              Tab(
                icon: Icon(Icons.search),
                text: "Adicionar",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Amigos",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AddFriends(),
            FriendsAdded(),
          ],
        ),
      ),
    );
  }
}

//Corpo do AddFriends
class AddFriends extends StatelessWidget {
  const AddFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/amigos.png")),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                //Lista de amigos
                Container(
                  padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                  height: 529.425,
                  width: width,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 40,
                      mainAxisSpacing: 40,
                    ),
                    children: templateCategories.map((cat) {
                      return CategoryItem(cat);
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Corpo do FriendsAdded
class FriendsAdded extends StatelessWidget {
  const FriendsAdded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Amigos Adicionados"),
    );
  }
}

//Construção da tabela
class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem(this.category, {Key? key}) : super(key: key);

  void _selectedCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/categories-friends',
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    //Construção da grade dos estados
    return InkWell(
      onTap: () => _selectedCategory(context),
      splashColor: const Color.fromARGB(255, 221, 160, 230),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              category.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 191, 134, 229),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
      ),
    );
  }
}

//Dentro dos estados
class CategoriesFriendsScreen extends StatelessWidget {
  CategoriesFriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    //Verificador se está no estado certo
    final friends = templateFriends.where((friends) {
      return friends.id.contains(category.id);
    }).toList();

    //Construção da lista de amigos do estado
    return Scaffold(
      appBar: AppBar(
        title: Text("Amigos em ${category.id}"),
        backgroundColor: const Color.fromARGB(255, 126, 47, 179),
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          return Tabel(friends[index]);
        },
      ),
    );
  }
}

//Criação das tabelas dos amigos
class Tabel extends StatelessWidget {
  final Friends friend;
  const Tabel(this.friend, {Key? key}) : super(key: key);

  void _selectedFriend(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/details-friends',
      arguments: friend,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectedFriend(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    friend.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 20,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: Text(
                      friend.name,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(children: [
                Row(
                  children: [
                    const Icon(
                      Icons.more_time_rounded,
                      size: 30,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '${friend.age} Anos',
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      width: 140,
                    ),
                    const Icon(
                      Icons.location_city,
                      size: 30,
                    ),
                    const SizedBox(width: 6),
                    SizedBox(
                      width: 84,
                      child: Text(
                        friend.city,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                        overflow: TextOverflow.fade,
                        softWrap: false,
                      ),
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

//Criação dos detalhes amigos
class DetailsFriendsScreen extends StatelessWidget {
  const DetailsFriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final friend = ModalRoute.of(context)?.settings.arguments as Friends;
    return Scaffold(
      appBar: AppBar(
        title: Text(friend.name),
        backgroundColor: const Color.fromARGB(255, 126, 47, 179),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            //Criação do circulo
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purple,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  friend.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 126, 47, 179),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.person,
                        size: 35,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        friend.name,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      Text(
                        "Tem ${friend.age} anos de vida",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                      height: 150,
                      width: 380,
                      child: Column(
                        children: [
                          Expanded(
                            child: Text(
                              friend.description,
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                  Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 161, 89, 209),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Passar o Zap",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FriendDrawner extends StatelessWidget {
  const FriendDrawner({Key? key}) : super(key: key);

  Widget listDrawers(IconData icon, String label) {
    return ListTile(
      minLeadingWidth: 0,
      leading: Icon(
        icon,
        size: 25,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
      onTap: () {},
    );
  }

  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Theme.of(context).colorScheme.primary,
              alignment: Alignment.bottomCenter,
              child: const Text(
                "Seu Perfil",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            listDrawers(Icons.photo_outlined, "Adicionar Foto"),
            listDrawers(Icons.content_paste_search_rounded, "Descrição"),
            listDrawers(
                Icons.playlist_add_check_circle_outlined, "Informações"),
            listDrawers(Icons.help_outline, "Ajuda"),
          ],
        ),
      ),
    );
  }
}
