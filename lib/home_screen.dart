import 'package:bmi_calculater/result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'icon_contant.dart';

import 'reuseble_cards.dart';
import 'calculation.dart';

const activeColor = Colors.black26;
const inactiveColor = Colors.black12;

enum Gender {
  male,
  female,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectGender;

  int height = 125;
  int weight = 60;
  int age = 25;

  @override

  Widget build(BuildContext context) {
    setState(() {

    });
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BMI-CALCULATOR'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectGender = Gender.male;
                        });
                      },
                      child: ReusebaleCard(
                        color: selectGender == Gender.male
                            ? activeColor
                            : inactiveColor,
                        cardChiled: const iconContant(
                          Icons: Icons.male_outlined,
                          lable: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectGender = Gender.female;
                        });
                      },
                      child: ReusebaleCard(
                        color: selectGender == Gender.female
                            ? activeColor
                            : inactiveColor,
                        cardChiled: const iconContant(
                            Icons: Icons.female_outlined, lable: 'FEMALE'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    color: activeColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'HEIGHT',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          height.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 50),
                        ),
                        const Text(
                          'cm',
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        max: 250,
                        activeColor: Colors.black,
                        inactiveColor: Colors.grey,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ReusebaleCard(
                        color: Colors.grey,
                        cardChiled: Column(
                          children: [
                            const Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 40),
                                ),
                                const Text(
                                  'kg',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    backgroundColor: Colors.black,
                                    child: const Icon(Icons.add),
                                  ),
                                ),
                                Expanded(
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    backgroundColor: Colors.black,
                                    child: const Icon(Icons.minimize_outlined),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ReusebaleCard(
                      color: Colors.grey,
                      cardChiled: Column(
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                age.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 40,
                                ),
                              ),
                              const Text(
                                'Y',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  backgroundColor: Colors.black,
                                  child: const Icon(Icons.add),
                                ),
                              ),
                              Expanded(
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  backgroundColor: Colors.black,
                                  child: const Icon(Icons.minimize_outlined),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                  ],
                ),
              ),
           const   SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  CalculationMain calc = CalculationMain(height: height, weight: weight,);
              Get.to(ResultPage(
                resulttext: calc.getResult(),
                bmiResult: calc.calculateBMI(),
                bmiinterpration: calc.bmiresult(),


              ));
                },
                child: Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    'Calculate',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
