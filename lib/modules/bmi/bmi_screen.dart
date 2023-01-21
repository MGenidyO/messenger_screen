import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_result/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  late Timer timer;
  bool isMale = true;
  double height = 120.0;
  int age = 20;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'BMI CALCULAOR',
          style: TextStyle(
            color: Colors.grey[350],
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        isMale = true;
                        setState(() {});
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/male.png'),
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Male',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 25.0),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: isMale
                              ? Colors.redAccent[400]
                              : Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            isMale
                                ? BoxShadow(
                                    color: Colors.white.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  )
                                : BoxShadow(
                                    color: Colors.white.withOpacity(0.0),
                                    spreadRadius: 0,
                                    blurRadius: 0,
                                    offset: Offset(
                                        0, 0), // changes position of shadow
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        isMale = false;
                        setState(() {});
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/female.png'),
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Female',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 25.0),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: !isMale
                              ? Colors.redAccent[400]
                              : Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            !isMale
                                ? BoxShadow(
                                    color: Colors.white.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  )
                                : BoxShadow(
                                    color: Colors.white.withOpacity(0.0),
                                    spreadRadius: 0,
                                    blurRadius: 0,
                                    offset: Offset(
                                        0, 0), // changes position of shadow
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(color: Colors.grey, fontSize: 25.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${height.round()}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'CM',
                        style: TextStyle(color: Colors.grey, fontSize: 25.0),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    ),
                    child: Slider(
                      value: height,
                      min: 50,
                      max: 220,
                      onChanged: (value) {
                        height = value;
                        setState(() {});
                      },
                      activeColor: Colors.white,
                      thumbColor: Colors.redAccent[400],
                      inactiveColor: Colors.grey.withOpacity(0.2),
                    ),
                  ),
                ],
              ),
            ),
          )),
          Expanded(
              child: Container(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${weight}',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  if (weight >= 4) weight--;
                                  setState(() {});
                                },
                                onLongPress: () {
                                  if (weight >= 4) weight--;
                                  setState(() {});
                                },
                                shape: CircleBorder(),
                                color: Colors.grey.withOpacity(0.4),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                height: 55.0,
                              ),
                              MaterialButton(
                                onPressed: () {
                                  if (weight <= 200) weight++;
                                  setState(() {});
                                },
                                onLongPress: () {
                                  if (weight <= 200) weight++;
                                  setState(() {});
                                },
                                shape: CircleBorder(),
                                color: Colors.grey.withOpacity(0.4),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                height: 55.0,
                              )
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTapDown: (TapDownDetails details) {
                                  timer = Timer.periodic(
                                      Duration(milliseconds: 250), (t) {
                                    setState(() {
                                      if (age >= 2) age--;
                                    });
                                  });
                                },
                                onTapUp: (TapUpDetails details) {
                                  timer.cancel();
                                },
                                onTapCancel: () {
                                  timer.cancel();
                                },
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age >= 2) age--;
                                    });
                                  },
                                  shape: CircleBorder(),
                                  color: Colors.grey.withOpacity(0.4),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    //textDirection: ,
                                  ),
                                  height: 55.0,
                                ),
                              ),
                              GestureDetector(
                                onTapDown: (TapDownDetails details) {
                                  timer = Timer.periodic(
                                      Duration(milliseconds: 250), (t) {
                                    setState(() {
                                      if (age <= 140) age++;
                                    });
                                  });
                                },
                                onTapUp: (TapUpDetails details) {
                                  timer.cancel();
                                },
                                onTapCancel: () {
                                  timer.cancel();
                                },
                                child: MaterialButton(
                                  onPressed: () {
                                    if (age <= 140) age++;
                                    setState(() {});
                                  },
                                  shape: CircleBorder(),
                                  color: Colors.grey.withOpacity(0.4),
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  height: 55.0,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              color: Colors.redAccent[400],
              width: double.infinity,
              height: 70.0,
              child: MaterialButton(
                onPressed: () {
                  double result = weight / pow(height / 100, 2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BMIResultScreen(age: age,result: result.round(),isMale: isMale)),
                  );
                },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25.0),
                ),
                shape: CircleBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
