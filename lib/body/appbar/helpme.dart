import 'package:flutter/material.dart';

class Helpme extends StatelessWidget {
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.04,
          ),
          Row(
            children: [
              SizedBox(
                height: height * 0.12,
                width: width * 0.17,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close)),
              ),
              SizedBox(
                width: width * 0.22,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Me Ajuda',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Color.fromARGB(255, 223, 220, 220),
            ),
            width: width * 0.9,
            child: Row(
              children: [
                const Icon(Icons.search),
                const SizedBox(height: 40, width: 20,),
                SizedBox(
                  height: 30,
                  width: width * 0.6,
                  child: const TextField(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
