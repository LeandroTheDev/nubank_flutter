import 'package:flutter/material.dart';

void main() {
  runApp(const NubankApp());
}

class NubankApp extends StatelessWidget {
  const NubankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: height * 0.15,
          backgroundColor: Colors.purple,
          actions: [
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: height * 0.1,
                      width: width * 0.12,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 108, 27, 122),
                          ),
                        child: Icon(Icons.person_add))),
                    SizedBox(
                      width: width * 0.87,
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                    width: width * 0.28,
                    child: Text(
                      'Olá Bobo',
                      style: TextStyle(
                        fontSize: width * 0.049,
                      ),
                      )),
                    SizedBox(
                      width: width * 0.7,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Flexible(
                    child: SizedBox(
                      width: width * 0.40,
                      child: const Text(
                        'Conta',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.60,
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward))
                ],
              ),
            )
          ],
        ));
  }
}
