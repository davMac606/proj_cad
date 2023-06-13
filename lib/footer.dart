import 'package:flutter/material.dart';

class Footer extends BottomNavigationBar {
  Footer(BuildContext context, {super.key})
      : super(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () => Navigator.pushNamed(context, "/"),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(Icons.add_shopping_cart),
                onPressed: () => Navigator.pushNamed(context, "/cad_item"),
              ),
              label: "Itens",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(Icons.people),
                onPressed: () => Navigator.pushNamed(context, "/cad_emp"),
              ),
              label: "Funcionários",
            ),
          ],
        );
}
