import 'package:flutter/material.dart';
import 'package:kiatu/global_variables.dart';
import 'package:kiatu/home_page.dart';
import 'package:kiatu/product_details_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ✅ Define custom color scheme before using it
    final customColorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFFFECF01), // your yellow
      brightness: Brightness.light,
    ).copyWith(
      primary: const Color(0xFFFECF01),
      onPrimary: Colors.black,
      surface: Colors.white,
      background: Color(0xFFFDFDFD),
      secondary: Color(0xFF808080),
      onSecondary: Colors.white,
      onSurface: Colors.black,
    );
    

    return MaterialApp(
      title: "eKiatu",
      home: HomePage(
        // product: products[0],
        ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lato",
        colorScheme: customColorScheme,
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 25,
                  ),
          titleMedium: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 20,
                  ),
          )
                )
        );
  }
}
