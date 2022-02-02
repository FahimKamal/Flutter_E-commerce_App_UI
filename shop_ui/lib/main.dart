import 'package:flutter/material.dart';
import 'package:shop_ui/screens/home/home_screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App UI',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Gordita",
          scaffoldBackgroundColor: bgColor,
          textTheme: const TextTheme(
            bodyText2: TextStyle(color: Colors.black54),
          ),
        ),
      home: const HomeScreen(),
    );
  }
}

