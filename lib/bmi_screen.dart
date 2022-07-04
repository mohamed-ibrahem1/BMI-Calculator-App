import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mansour_test/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120.0;
  double weight = 80;
  String val = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(34, 40, 49, 1.0),
        elevation: 0.0,
        title: const Text('BMI Calculator'),
      ),
      body: Container(
        color: const Color.fromRGBO(34, 40, 49, 1.0),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: isMale
                                ? const Color.fromRGBO(0, 173, 181, 1)
                                : const Color.fromRGBO(57, 62, 70, 1),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'MALE',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: !isMale
                                ? const Color.fromRGBO(0, 173, 181, 1)
                                : const Color.fromRGBO(57, 62, 70, 1),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'FEMALE',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(
                          'assets/images/ruler.png',
                        ),
                        alignment: const Alignment(-2.3, 1),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color.fromRGBO(57, 62, 70, 1)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEIGHT',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        //السطر اللي تحت دة عشان يخلي كلمة سم علي نفس السطر من تحت مع ال 180 اللي جنبيها
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const Text(
                            'cm',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: const Color.fromRGBO(0, 173, 181, 1),
                        inactiveColor: Colors.white,
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/weighing-scale.png',
                              ),
                              alignment: Alignment(2.249, -0.9),
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromRGBO(57, 62, 70, 1)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  '${weight.round()}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                const Text(
                                  'kg',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 320,
                                  child: Slider(
                                    activeColor:
                                        const Color.fromRGBO(0, 173, 181, 1),
                                    inactiveColor: Colors.white,
                                    value: weight,
                                    max: 200.0,
                                    min: 50.0,
                                    onChanged: (value) {
                                      setState(() {
                                        weight = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: const Color.fromRGBO(0, 173, 181, 1),
              child: TextButton(
                onPressed: () {
                  double result = weight / pow(height / 100, 2);
                  setState(() {
                    if (result <= 18.5) {
                      val = 'Skinny';
                    } else if (result <= 24.5 && result > 18.5) {
                      val = 'perfect weight';
                    } else if (result <= 29.9 && result > 24.5) {
                      val = 'Not bad';
                    } else {
                      val = 'Fat';
                    }
                  });

                  print(result.round());

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BmiResaltScreen(
                        result: result.round(),
                        isMale: isMale,

                        ///***************
                        val: '$val',
                      ),
                    ),
                  );
                },
                child: const Text(
                  'CALCULATE',
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
