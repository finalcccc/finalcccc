import 'package:flutter/material.dart';
import 'package:untitled1/model/product_data.dart';

class Viewproduct extends StatefulWidget {
  const Viewproduct({Key? key}) : super(key: key);

  @override
  State<Viewproduct> createState() => _ViewproductState();
}

class _ViewproductState extends State<Viewproduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
     child: Image.network(Product_data().product[1].image!),
    ),

    );
   
  }
}
