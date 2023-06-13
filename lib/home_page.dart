// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:proj_cad/page_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageModel(context,
        title: "Home",
        body: Center(
          child: Text(
            "Bem-vindo!",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
