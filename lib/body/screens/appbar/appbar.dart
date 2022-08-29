import 'package:flutter/material.dart';
import 'package:nubank/main.dart';
import 'addfriends.dart';
import 'helpme.dart';
import 'profile.dart';

class NuBar extends StatefulWidget {
  final double height;
  final double width;
  final Widget visibility;

  NuBar(this.height, this.width, this.visibility, {Key? key}) : super(key: key);

  @override
  State<NuBar> createState() => NuBarState();
}

class NuBarState extends State<NuBar> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            //Perfil
            SizedBox(
              height: widget.height * 0.1,
              width: widget.width * 0.12,
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
                            builder: (context) => const Profile()));
                  },
                  icon: const Icon(Icons.person),
                ),
              ),
            ),

            SizedBox(
              width: widget.width * 0.52,
            ),

            //Ativiar a visualização do dinheiro
            widget.visibility,


            //Abrir menu de perguntas
            SizedBox(
                width: widget.width * 0.1,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Helpme()));
                  },
                  icon: const Icon(Icons.question_mark),
                )),

            //Abrir menu de convite
            SizedBox(
                width: widget.width * 0.1,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/friends-list');
                    },
                    icon: const Icon(Icons.person_add))),
            SizedBox(
              width: widget.width * 0.04,
            )
          ],
        ),
        SizedBox(
          height: widget.height * 0.02,
        ),
        Row(
          children: [
            SizedBox(
                width: widget.width * 0.28,
                child: Text(
                  'Olá, Bobo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: widget.width * 0.049,
                  ),
                )),
            SizedBox(
              width: widget.width * 0.65,
            ),
          ],
        ),
      ],
    );
  }
}
