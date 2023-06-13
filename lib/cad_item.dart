// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, unused_import, implementation_imports, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proj_cad/item.dart';
import 'package:proj_cad/item_repository.dart';

class MyCadItem extends StatefulWidget {
  const MyCadItem({super.key});

  @override
  State<MyCadItem> createState() => _MyCadItemState();
}

class _MyCadItemState extends State<MyCadItem> {
  String nomeItem = "";
  double preco = 0;
  int quantidade = 0;
  TextEditingController cntNomeItem = TextEditingController();
  TextEditingController cntPreco = TextEditingController();
  TextEditingController cntQuantidade = TextEditingController();
  ItemRepository itR = ItemRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: cntNomeItem,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome do Item',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: cntPreco,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Preço',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: cntQuantidade,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Quantidade',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  nomeItem = cntNomeItem.text;
                  preco = double.parse(cntPreco.text);
                  quantidade = int.parse(cntQuantidade.text);
                  Item it = Item(nomeItem, preco, quantidade);
                  itR.add(it);
                  itR.printItem();
                  setState(() {});
                });
              },
              child: Text("Cadastrar Item")),
        ],
      )),
    );
  }
}
