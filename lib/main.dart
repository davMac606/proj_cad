import 'package:flutter/material.dart';
import 'package:proj_cad/cad_emp_page.dart';
import 'package:proj_cad/cad_item_page.dart';
import 'package:proj_cad/home_page.dart';

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
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        routes: {
          '/': (context) => const HomePage(),
          '/cad_item': (context) => const ItemPage(),
          '/cad_emp': (context) => const EmpPage(),
        });
  }
}
