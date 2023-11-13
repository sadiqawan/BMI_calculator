

import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key, required this.resulttext, required this.bmiResult, required this.bmiinterpration}) : super(key: key);

  final String resulttext ;

  final String bmiResult ;

  final String bmiinterpration;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BMI-RESULT'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
          const  Padding(
             padding:  EdgeInsets.all(8.0),
             child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Result',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.65,
                color: Colors.grey,
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      widget.resulttext,
                      style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      widget.bmiResult,
                      style:
                         const  TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      widget.bmiinterpration,
                      textAlign: TextAlign.center,

                      style:
                         const  TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
              Navigator.pop(context);

              },
              child: Container(
                height: 60,

                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  'Re-Calculate',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
