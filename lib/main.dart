import 'package:flutter/material.dart';
import 'pages/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF141A3C),
        scaffoldBackgroundColor: Color(0XFF141A3C),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.purple),
      ),
      initialRoute: 'home',
      routes: {
        'home' : (context) => InputPage(),
        // 'results' : (context) => ResultsPage(),
      },
    );
  }
}


