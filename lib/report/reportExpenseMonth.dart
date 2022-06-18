// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/report/reportExpense.dart';
import 'package:untitled1/report/reportIncome.dart';

import '../WidgetSearch/widgetSearch.dart';
import '../celement/elements.dart';
import '../notifire/Repport_Notifire.dart';
import 'package:intl/intl.dart';


class ReportExpenseMonth extends StatefulWidget {
  const ReportExpenseMonth({Key? key}) : super(key: key);

  @override
  State<ReportExpenseMonth> createState() => _ReportExpenseMonthState();
}

final List items = List.generate(4, (i) => "Item $i");

class _ReportExpenseMonthState extends State<ReportExpenseMonth> {
  @override
  Widget build(BuildContext context) {
    report_incomeNotifire expanese = Provider.of<report_incomeNotifire>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('ລາຍງານລາຍຈ່າຍປະຈຳເດືອນ'),
          centerTitle: true,
          backgroundColor: element.main,
          leading: element().RoutePageBack(context, const ReportExpense()),
          bottom: WidgetSearch(label: "ວັນ ເດືອນ ປີ"),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Text(
                    ' ເດືອນ: ${expanese.curren_expanese!.date!.toDate().toString().substring(0,7)}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemCount: expanese.expanese_day.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(right: 10,left: 10),
                      child: InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Card(
                              child: Column(
                                children: [
                                  ListTile(
                                    title:  Text(
                                        'ວັນທີ: ${expanese.expanese_day[index].date!.toDate().toString().substring(0,10)}'),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'ລາຍຈ່າຍທັງໝົດ:',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              ' - ${NumberFormat.decimalPattern().format(expanese.expanese_day[expanese.expanese_day.length-index-1].sumtatall)}',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '  ກີບ',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                        },
                      ));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox();
                },
              ),
            )
          ],
        ));
  }
}
