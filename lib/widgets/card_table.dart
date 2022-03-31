import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            color: Colors.teal,
            icon: Icons.pie_chart,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.purple,
            icon: Icons.car_rental,
            text: 'Transport',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.pink,
            icon: Icons.shopping_bag,
            text: 'Shopping',
          ),
          _SingleCard(
            color: Colors.brown,
            icon: Icons.document_scanner,
            text: 'Bill',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.cloud,
            text: 'Cloud',
          ),
          _SingleCard(
            color: Colors.green,
            icon: Icons.wallet_travel,
            text: 'Grocery',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.orangeAccent,
            icon: Icons.music_note,
            text: 'Music',
          ),
          _SingleCard(
            color: Colors.red,
            icon: Icons.surfing,
            text: 'Holidays',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            size: 50,
            color: Colors.white,
          ),
          radius: 35,
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(color: color, fontSize: 20),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            height: 180,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
