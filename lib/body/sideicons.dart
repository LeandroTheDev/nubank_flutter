import 'package:flutter/material.dart';


class SideIcons extends StatelessWidget {

  final double width;
  final double height;
  const SideIcons(this.width, this.height, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          //Área pix
          SizedBox(
            width: width * 0.045,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                radius: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.pix,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                'Área Pix',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          //Pagar
          SizedBox(
            width: width * 0.02,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                radius: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.payment,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                'Pagar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          //Transferir
          SizedBox(
            width: width * 0.02,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                radius: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.attach_money,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                'Transferir',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                radius: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.money,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                'Depositar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                radius: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                'Recarga',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                radius: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.card_giftcard,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                'Cobrar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                radius: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.health_and_safety_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                'Doação',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: width * 0.01,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                radius: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.wifi,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                'Internacional',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: width * 0.01,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(185, 231, 229, 229),
                radius: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.waterfall_chart_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                'Investir',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
