// ignore_for_file: implementation_imports, unnecessary_import, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proj_cad/cad_item.dart';
import 'package:proj_cad/page_model.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageModel(context,
        title: "Cadastro de Items",
        body: const Center(
          child: MyCadItem(),
        ));
  }
}
