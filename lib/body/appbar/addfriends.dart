import 'package:flutter/material.dart';

class AddFriends extends StatelessWidget {
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 220, 220),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.04,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close)),
              ),
            ),
          Row(
            children: [
              
            ],
          ),
        ],
      ),
    );
  }
}
