import 'package:flutter/material.dart';
import 'perfil.dart';
import '../../main.dart';

class NuBar extends StatefulWidget {
  final double height;
  final double width;
  NuBar(this.height, this.width, {Key? key}) : super(key: key);

  @override
  State<NuBar> createState() => NuBarState();
}

class NuBarState extends State<NuBar> {
  static bool swap = false;

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
                            builder: (context) => const SecondRoute()));
                  },
                  icon: const Icon(Icons.person),
                ),
              ),
            ),

            SizedBox(
              width: widget.width * 0.52,
            ),


            //Ativar e desativar visualização do dinheiro
            SizedBox(
                width: widget.width * 0.1,
                child: swap ? IconButton(
                    onPressed: () { 
                      setState(() {
                        swap = !swap;
                        HomeState;
                      });
                    print(swap);
                    },
                    icon: const Icon(Icons.remove_red_eye))
                    : IconButton(
                    onPressed: () { 
                      setState(() {
                        swap = !swap;
                        HomeState;
                      });
                    print(swap);
                    },
                    icon: const Icon(Icons.remove_red_eye_outlined)),
                    ),

            //Abrir menu de perguntas
            SizedBox(
                width: widget.width * 0.1,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.question_mark),
                )),

            //Abrir menu de convite
            SizedBox(
                width: widget.width * 0.1,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.person_add))),
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