
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled1/model/product_Model.dart';

class CartDetailData {
  product_Model? Product;
  int amout = 0;

  CartDetailData(this.Product, this.amout);
}

class CartModel {
  String? NameProduct;
  int? amout;
  CartModel(this.NameProduct,this.amout);
  CartModel.formMAp(Map<String, dynamic> v) {
    NameProduct = v['nameProduct'];
    amout = v['amout'];
  }
  Map<String,dynamic>toMap(){
    return{
      'nameProduct':NameProduct,
      'amout':amout
    };
  }
}
class CartModelupload{
  String?id;
    String? NameSupplier;
    int? amouttotal;
    CartModel? Detell;
    var Ditell =[];
    Timestamp?date;
 CartModelupload();
 List<int> p =[1,2,3];
  CartModelupload.formMap(Map<String,dynamic>v){
    id=v['id'];
    NameSupplier = v['NameSupplier'];
    amouttotal =v['amouttotal'];
    //Ditell = v['Ditell'];
    date=v['date'];
  }
  Map<String, dynamic> toMap() =>{
      'id':id,
      'NameSupplier':NameSupplier,
      'amouttotal':amouttotal,
      'Ditell':Ditell,
       'date':DateTime.now()

  };

}