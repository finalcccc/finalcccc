


import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled1/model/product_Model.dart';
import 'package:untitled1/notifire/OrderNotifire.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled1/model/Orde_Modelr.dart';
import 'package:untitled1/notifire/OrderNotifire.dart';

// Get_Order(Order_Notifire Order)async{
//     List<Order_Model_upload>order_model=[];
//      QuerySnapshot<Map<String , dynamic>> rfn =await FirebaseFirestore.instance.collection('order').get();
//      rfn.docs.forEach((element) {
//        order_model.add(Order_Model_upload.formMap(element.data()));
//
//      });
//      Order.Order =order_model;
//      Order.Referenc();
//   }

Get_Order(Order_Notifire Order)async{
    List<Order_Model_upload>order_model=[];
    QuerySnapshot<Map<String , dynamic>> rfn =await FirebaseFirestore.instance.collection('order').orderBy('date',descending: true).get();
    rfn.docs.forEach((element) {
      order_model.add(Order_Model_upload.formMap(element.data()));

    });
    Order.Order =order_model;
    Order.Referenc();
  }
  Get_Order_Detlill(Order_Notifire Order)async{

    List<CartDetailData>detill=[];
    Order.Curren_Order!.Ditell.forEach((v)async {
      QuerySnapshot<Map<String, dynamic>> rfn = await FirebaseFirestore.instance
          .collection('products')
          .where('id', isEqualTo: v['product_id'])
          .get();
      rfn.docs.forEach((element) async {
        product_Model f =  product_Model.formMap(element.data());
        QuerySnapshot<Map<String, dynamic>> rfn = await FirebaseFirestore.instance
            .collection('categorys')
            .where('id', isEqualTo: f.category_id)
            .get();
        rfn.docs.forEach((element)async{
          f.category_id = await element['category'];
          detill.add(CartDetailData(f,v['amout'],v['sum']));
          Order.Order_detill = detill;
          print(Order.Order_detill.length);
          Order.Referenc();
        });

      });
    });


  }