import 'package:flutter/material.dart';

class iconContant extends StatelessWidget {


  final IconData Icons  ;
  final  lable ;

  const iconContant({super.key, required this.Icons , required this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Icon( Icons,
          size: 100,)

        ,
        const   SizedBox(
          height: 10,
        ),
        Text(
          lable,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}