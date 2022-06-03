import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/notifire/product_notifire.dart';

import '../../api/getCategoryData.dart';

class ViewCategory extends StatefulWidget {
  const ViewCategory({Key? key}) : super(key: key);

  @override
  State<ViewCategory> createState() => _ViewCategoryState();
}

class _ViewCategoryState extends State<ViewCategory> {
  @override
  void initState() {
    super.initState();
      dos();
  }
  Future dos()async{
    categorynotifiere category = Provider.of<categorynotifiere>(context,listen: false);
   await GetCategoryData(category);
}
  @override
  Widget build(BuildContext context) {
    categorynotifiere category = Provider.of<categorynotifiere>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewCategory'),
      ),
      body: ListView.separated(itemBuilder:(context, index) {
        return ListTile(
          title: Text('${category.categorylist[index].category}'),
        );
      },
          separatorBuilder: (contxt,index){
          return const Divider(
            color: Colors.black,
          );
          }, itemCount: category.categorylist.length ),
    );
  }
}
