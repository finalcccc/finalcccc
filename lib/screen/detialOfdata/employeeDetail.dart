import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmployeeDetail extends StatefulWidget {
  const EmployeeDetail({Key? key}) : super(key: key);

  @override
  State<EmployeeDetail> createState() => _EmployeeDetailState();
}

class _EmployeeDetailState extends State<EmployeeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Detail "),
        centerTitle: true,
      ),
    );
  }
}