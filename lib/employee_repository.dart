// ignore_for_file: unused_field, prefer_final_fields, avoid_print, unnecessary_this

import 'package:proj_cad/employee.dart';

class EmployeeRepository {
  List<Employee> _employees = [];

  EmployeeRepository() {
    this._employees = [];
  }

  void add(Employee emp) {
    _employees.add(emp);
  }

  void printEmployee() {
    for (var i = 0; i < _employees.length; i++) {
      print(_employees[i].nome);
    }
  }
}
