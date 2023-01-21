import 'package:flutter/material.dart';
import 'modules/users/users_screen.dart';

import 'modules/bmi/bmi_screen.dart';
import 'modules/counter/home-page.dart';
import 'modules/login/login_screen.dart';
import 'modules/messenger/messenger_screen.dart';
import 'modules/stack_example1/stack_example1.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
