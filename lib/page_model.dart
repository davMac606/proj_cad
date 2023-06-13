import 'package:flutter/material.dart';
import 'package:proj_cad/footer.dart';
import 'package:proj_cad/navbar.dart';

class PageModel extends Scaffold {
  PageModel(context, {required String title, Widget? body, super.key})
      : super(
            appBar: NavBar(context, title: title),
            
            body: body,
            bottomNavigationBar: Footer(context));
}
