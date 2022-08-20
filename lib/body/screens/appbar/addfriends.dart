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
            width: width,
            child: GridView(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 50,
                childAspectRatio: 1/2,
                crossAxisSpacing: 100,
                mainAxisSpacing: 0,
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

  @override
  Widget build(BuildContext context){
    return Container(
      child: Text(category.title),
    );
  }
}