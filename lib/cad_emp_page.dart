// ignore_for_file: unused_import, unnecessary_import, implementation_imports

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proj_cad/cad_emp.dart';
import 'package:proj_cad/cad_item_page.dart';
import 'package:proj_cad/page_model.dart';

class EmpPage extends StatelessWidget {
  const EmpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageModel(
      context,
      title: "Cadastro de Empresários",
      body: const Center(
        child: MyCadEmp(),
      ),
    );
  }
}
