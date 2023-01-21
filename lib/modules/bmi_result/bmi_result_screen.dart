import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int age;
  final int result;
  final bool isMale;
  BMIResultScreen({
    required this.age,
    required this.result,
    required this.isMale,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gender: ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0
                  ),
                ),
                Text('${isMale ? 'Male' : 'Female'}',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Result: ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0
                  ),
                ),
                Text('$result',
                  style: TextStyle(
                      fontSize: 30.0
                  ),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Age: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0
                  ),
                ),
                Text('$age',
                  style: TextStyle(
                      fontSize: 30.0
                  ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
