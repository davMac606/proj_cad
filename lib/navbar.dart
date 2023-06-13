import 'package:flutter/material.dart';

class NavBar extends AppBar {
  NavBar(BuildContext context, {super.key, required String title})
      : super(title: Text(title), actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, "/"),
              icon: const Icon(Icons.home)),
          IconButton(
              onPressed: () => Navigator.pushNamed(context, "/cad_item"),
              icon: const Icon(Icons.add_shopping_cart)),
          IconButton(
              onPressed: () => Navigator.pushNamed(context, "/cad_emp"),
              icon: const Icon(Icons.people)),
        ]);
}
