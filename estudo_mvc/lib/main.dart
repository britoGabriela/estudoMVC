import 'package:flutter/material.dart';
import 'package:new_proj_estudos/pages/details_page.dart';
import 'package:new_proj_estudos/pages/home_page.dart';
import 'package:new_proj_estudos/pages/login_page.dart';
import 'package:new_proj_estudos/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => const HomePage(),
        '/details': (context) => const DetailsPage(),
      },
    );
  }
}

