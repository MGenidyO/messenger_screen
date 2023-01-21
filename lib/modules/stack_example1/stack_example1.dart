
import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Example 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Container(
                    width: 28.0,
                    height: 24.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                  Text('OR',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
