import 'package:flutter/material.dart';

class ReusebaleCard extends StatelessWidget {
  ReusebaleCard({required this.color, required this.cardChiled});

  final Widget cardChiled;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: cardChiled,
    );
  }
}