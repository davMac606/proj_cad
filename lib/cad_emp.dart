// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, unnecessary_import, unused_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proj_cad/employee.dart';
import 'package:proj_cad/employee_repository.dart';

class MyCadEmp extends StatefulWidget {
  const MyCadEmp({super.key});

  @override
  State<MyCadEmp> createState() => _MyCadEmpState();
}

class _MyCadEmpState extends State<MyCadEmp> {
  String nomeEmpresa = "";
  String nome = "";
  int idade = 0;
  String cargo = "";
  TextEditingController cntNomeEmpresa = TextEditingController();
  TextEditingController cntNome = TextEditingController();
  TextEditingController cntIdade = TextEditingController();
  TextEditingController cntCargo = TextEditingController();
  EmployeeRepository empR = EmployeeRepository();
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
            controller: cntNomeEmpresa,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome da Empresa',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: cntNome,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: cntIdade,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Idade',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: cntCargo,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Cargo',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  nomeEmpresa = cntNomeEmpresa.text;
                  nome = cntNome.text;
                  idade = int.parse(cntIdade.text);
                  cargo = cntCargo.text;
                  Employee emp = Employee(nomeEmpresa, nome, idade, cargo);
                  empR.add(emp);
                  empR.printEmployee();
                  setState(() {});
                });
              },
              child: Icon(Icons.save))
        ],
      )),
    );
  }
}
