import 'package:flutter/material.dart';
import 'package:kiatu/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping App",
      home: HomePage(),
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lato",
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color.fromRGBO(254, 206, 1, 1))
      ),
    );
  }
}