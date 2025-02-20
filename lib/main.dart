import 'package:flutter/material.dart';
import 'pages/landing_page.dart';
import 'pages/selection_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PaRECIEVED',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/selection': (context) => const PaRECEIVEDSelectionPage(),
      },
    );
  }
}
