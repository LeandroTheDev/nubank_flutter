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

//Criação do que tem nas categorias
const templateCategories = [
  Category(
    id: 'a1',
    title: 'Amigo 1',
    color: Colors.purple,
  ),
  Category(
    id: 'a2',
    title: 'Amigo 2',
    color: Colors.purple,
  ),
  Category(
    id: 'a3',
    title: 'Amigo 3',
    color: Colors.purple,
  ),
  Category(
    id: 'a4',
    title: 'Amigo 4',
    color: Colors.purple,
  ),
  Category(
    id: 'a5',
    title: 'Amigo 5',
    color: Colors.purple,
  ),
  Category(
    id: 'a6',
    title: 'Amigo 6',
    color: Colors.purple,
  ),
  Category(
    id: 'a7',
    title: 'Amigo 7',
    color: Colors.purple,
  ),
  Category(
    id: 'a8',
    title: 'Amigo 8',
    color: Colors.purple,
  ),
  Category(
    id: 'a9',
    title: 'Amigo 9',
    color: Colors.purple,
  ),
  Category(
    id: 'a10',
    title: 'Amigo 10',
    color: Colors.purple,
  ),
];

//Corpo do AddFriends
class AddFriends extends StatelessWidget {
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
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
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

  CategoryItem(this.category);

  void _selectedCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_){
          return CategoriesFriendsScreen(category);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectedCategory(context),
      splashColor: Color.fromARGB(255, 221, 160, 230),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
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



class CategoriesFriendsScreen extends StatelessWidget {

  final Category category;

  CategoriesFriendsScreen(this.category);

  @override
  Widget build(BuildContext context){
    return Scaffold(
    );
  }
}