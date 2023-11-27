import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              icon: Icons.access_alarm, text: 'hola', color: Colors.red),
          _SingleCard(
              icon: Icons.sports_golf, text: 'perro', color: Colors.blue),
        ]),
        TableRow(children: [
          _SingleCard(icon: Icons.backpack, text: 'como', color: Colors.amber),
          _SingleCard(icon: Icons.nature, text: 'estas', color: Colors.pink),
        ]),
        TableRow(children: [
          _SingleCard(icon: Icons.gamepad, text: 'te', color: Colors.orange),
          _SingleCard(icon: Icons.kayaking, text: 'jodes', color: Colors.green),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const _SingleCard(
      {required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon(icon, color: Colors.white, size: 35),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(text, style: TextStyle(color: color, fontSize: 18)),
      ],
    );
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: Container(
            height: 180,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(66, 72, 88, 0.7),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: _CardBackground(widget: column),
          ),
        ),
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget widget;
  const _CardBackground({required this.widget});

  @override
  Widget build(BuildContext context) {
    return widget;
  }
}
