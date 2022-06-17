import 'package:custom_calculater/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Home());
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.transparent
      ),
      home: MainScreen(),
    );
  }
}




