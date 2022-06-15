// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class SupplierDialog {
  final GlobalKey<FormState> _key_import = GlobalKey<FormState>();
  Dialog(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(child: SingleChildScrollView(
            child: AlertDialog(
              actions: [
                IconButton(
                  icon: const Icon(Icons.indeterminate_check_box_outlined,
                      color: Colors.red, size: 30),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Column(
                  children: [
                    Form(
                      key: _key_import,
                      child: SizedBox(
                        width: 400,
                        height: 400,
                        child: Card(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextFormField(
                                    initialValue: '',
                                    decoration: const InputDecoration(
                                      hintText: "ຊື່ ແລະ ນາມສະກຸນ",
                                      prefixIcon: Icon(Icons.person),
                                    ),
                                    onSaved: (value) {},
                                    validator: (cost) {
                                      if (cost!.isEmpty) {
                                        return "ກະລຸນາປ້ອນຂໍ້ມູນ";
                                      } else if (cost.length < 4) {
                                        return "ກວດສວບລາຄາ";
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 5),
                                  TextFormField(
                                    initialValue: '',
                                    decoration: const InputDecoration(
                                      hintText: "ອີເມວ",
                                      prefixIcon: Icon(Icons.email),
                                    ),
                                    onSaved: (value) {},
                                    validator: (amout) {
                                      if (amout!.isEmpty) {
                                        return "ກະລຸນາປ້ອນຂໍ້ມູນ";
                                      } else if (amout.isEmpty) {
                                        return "ກວດສວບລາຄາ";
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 5),
                                  TextFormField(
                                    initialValue: '',
                                    decoration: const InputDecoration(
                                      hintText: "ເບີໂທລະສັບ",
                                      prefixIcon: Icon(Icons.phone),
                                    ),
                                    onSaved: (_address) {},
                                    validator: (cost) {
                                      if (cost!.isEmpty) {
                                        return "ກະລຸນາປ້ອນຂໍ້ມູນ";
                                      } else if (cost.length < 4) {
                                        return "ກວດສວບລາຄາ";
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 5),
                                  TextFormField(
                                    initialValue: '',
                                    decoration: const InputDecoration(
                                      hintText: "ທີ່ຢູ່",
                                      prefixIcon: Icon(Icons.home),
                                    ),
                                    onSaved: (_address) {},
                                    validator: (cost) {
                                      if (cost!.isEmpty) {
                                        return "ກະລຸນາປ້ອນຂໍ້ມູນ";
                                      } else if (cost.length < 4) {
                                        return "ກວດສວບລາຄາ";
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 5),
                                  TextFormField(
                                    initialValue: '',
                                    decoration: const InputDecoration(
                                      hintText: "ສິນຄ້າຜູ້ສະໜອງ",
                                      prefixIcon: Icon(Icons.production_quantity_limits_sharp),
                                    ),
                                    onSaved: (_address) {},
                                    validator: (cost) {
                                      if (cost!.isEmpty) {
                                        return "ກະລຸນາປ້ອນຂໍ້ມູນ";
                                      } else if (cost.length < 4) {
                                        return "ກວດສວບລາຄາ";
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 30),
                                  SizedBox(
                                    width: 300,
                                    height: 55,
                                    child: ElevatedButton(
                                      child: const Text(
                                        'ບັນທືກ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      onPressed: () async {
                                        if (_key_import.currentState!.validate()) {
                                          _key_import.currentState!.save();
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),);
        });
  }
}