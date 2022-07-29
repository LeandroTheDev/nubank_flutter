import 'package:flutter/material.dart';
import 'perfil.dart';

class NuBar extends StatelessWidget {
  final double height;
  final double width;
  const NuBar(this.height, this.width, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            //Perfil
            SizedBox( 
              height: height * 0.1,
              width: width * 0.12,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 160, 73, 218),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()));
                  },
                  icon: const Icon(Icons.person),
                ),
              ),
            ),

            SizedBox(
              width: width * 0.52,
            ),

            //Ativar e desativar visualização do dinheiro
            SizedBox(
                width: width * 0.1,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.remove_red_eye))),

            //Abrir menu de perguntas
            SizedBox(
                width: width * 0.1,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.question_mark),
                )),

            //Abrir menu de convite
            SizedBox(
                width: width * 0.1,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.person_add))),
            SizedBox(
              width: width * 0.04,
            )
          ],
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Row(
          children: [
            SizedBox(
                width: width * 0.28,
                child: Text(
                  'Olá, Bobo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.049,
                  ),
                )),
            SizedBox(
              width: width * 0.65,
            ),
          ],
        ),
      ],
    );
  }
}
