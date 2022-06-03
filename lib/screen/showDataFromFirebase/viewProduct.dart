import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/api/aip.dart';
import 'package:untitled1/api/aip_getdata.dart';
import 'package:untitled1/model/category.dart';
import 'package:untitled1/notifire/product_notifire.dart';

class ViewProduct extends StatefulWidget {
  const ViewProduct({Key? key}) : super(key: key);

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  @override
  void initState() {
    super.initState();
    getProduct_data();
  }
  catagory_data  cate = catagory_data();
  getProduct_data()async{

    QuerySnapshot<Map<String ,dynamic>> querySnapshot = await FirebaseFirestore.instance.collection("categorys").get();
      querySnapshot.docs.forEach((element) {

      });
  }
  @override
  Widget build(BuildContext context) {
  // Productnotifiere product = Provider.of<Productnotifiere>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
    child: FloatingActionButton(
    backgroundColor: Colors.amberAccent,
    onPressed: ()async {
      await getProduct_data();
    },
    child: Icon(
    Icons.train,
    size: 35,
    color: Colors.black,
    ),
    ),),);
  }
}