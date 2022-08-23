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
    color: Colors.purple,
  ),
  Category(
    id: 'RJ',
    title: 'Rio de Janeiro',
    color: Colors.purple,
  ),
  Category(
    id: 'SP',
    title: 'São Paulo',
    color: Colors.purple,
  ),
  Category(
    id: 'RS',
    title: 'Rio Grande do Sul',
    color: Colors.purple,
  ),
  Category(
    id: 'MG',
    title: 'Minas Gerais',
    color: Colors.purple,
  ),
  Category(
    id: 'AC',
    title: 'Acre',
    color: Colors.purple,
  ),
  Category(
    id: 'MT',
    title: 'Mato Grosso',
    color: Colors.purple,
  ),
  Category(
    id: 'MS',
    title: 'Mato Grosso Do Sul',
    color: Colors.purple,
  ),
  Category(
    id: 'ES',
    title: 'Espirito Santo',
    color: Colors.purple,
  ),
  Category(
    id: 'BA',
    title: 'Bahia',
    color: Colors.purple,
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
    description: 'O homem mais chad do mundo',
    city: 'Joinvas',
    imageUrl:
        'https://scontent.fbnu5-1.fna.fbcdn.net/v/t39.30808-6/131515347_361757075484186_7279731453872224817_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=174925&_nc_eui2=AeF6wiwLznuNvxJSCdmojWvqKMBT8G0pyIQowFPwbSnIhB9aLaAeRP6VSZDN0MUwzox386_94rAQt6EgkFb4baYy&_nc_ohc=QI-7AagWg2wAX-HNTpl&_nc_zt=23&_nc_ht=scontent.fbnu5-1.fna&oh=00_AT_GUf3Qni8XGWXGcb2E707gCfMAgWhxymHbOJyDbl_QsA&oe=63092E62',
  ),
  Friends(
    id: 'RS',
    name: 'YollaraDev',
    age: 20,
    description: 'A mais linda de todas',
    city: 'Não lembro',
    imageUrl:
        'https://scontent.fbnu5-1.fna.fbcdn.net/v/t39.30808-6/275388413_507922184291127_7164133995144990640_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGnSFiKyeruXgJ7ZTLUxje9BjIJb2FbELkGMglvYVsQua06PCg3sWP0IYtGlmEBy3jfZ3iJNJAAOuxaKBYVCapL&_nc_ohc=jtrrZECF4HYAX-YOZ6t&tn=eLbTe2I-Uef0dWo2&_nc_zt=23&_nc_ht=scontent.fbnu5-1.fna&oh=00_AT_KxKFvR3vvondN_jqVp87esKUgq_R1VwMHbP9AftBAUw&oe=630A0472',
  ),
  Friends(
    id: 'SC',
    name: 'Vinicim',
    age: 19,
    description: 'O homem mais chad do mundo',
    city: 'Joinvas',
    imageUrl:
        'https://www.girodoboi.com.br/wp-content/uploads/2022/07/texas_longhorn_08.07.2022.jpg',
  ),
  Friends(
    id: 'MG',
    name: 'Rochelem',
    age: 20,
    description: 'Trambiqueiro',
    city: 'Cascaneias',
    imageUrl: '',
  ),
];

//Corpo do AddFriends
class AddFriends extends StatelessWidget {
  const AddFriends({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 220, 220),
      body: Column(
        children: [
          //Espaçamento
          SizedBox(
            height: height * 0.04,
          ),

          //Icone do X para fechar
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close)),
            ),
          ),

          //Lista de amigos
          SizedBox(
            height: height * 0.88,
            width: width * 0.9,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: templateCategories.map((cat) {
                return CategoryItem(cat);
              }).toList(),
            ),
          ),
        ],
      ),
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
        child: Text(category.title),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
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

  void _selectFriend() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectFriend,
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
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
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
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      width: 140,
                    ),
                    const Icon(
                      Icons.location_city,
                      size: 30,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      friend.city,
                      style: TextStyle(fontSize: 15),
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
