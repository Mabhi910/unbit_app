import 'package:flutter/material.dart';
import 'package:unbit_app/bottomScreen.dart';
import 'package:unbit_app/dashboard_screen.dart';

import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unbit App',
      theme: ThemeData(
      ),
      home: const Login()
    );
  }
}
