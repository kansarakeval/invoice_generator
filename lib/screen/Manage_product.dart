import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_generator/util/global.dart';

import '../util/colors.dart';

class PastScreen extends StatefulWidget {
  const PastScreen({super.key});

  @override
  State<PastScreen> createState() => _PastScreenState();
}

class _PastScreenState extends State<PastScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: grayprimary1,
          centerTitle: true,
          title: Text(
            "Manage Products",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'PDF');
                },
                icon: Icon(
                  Icons.print,
                  color: Colors.white,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: Global.g1.InvoiceScreenList.map((e) => Container(
              margin: EdgeInsets.all(5),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: grayprimary, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("No: ${e['No']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              SizedBox(width: 20,),
                              Text("${e['CustomerName']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Text("Product: ${e['Product']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          InkWell(
                            onTap: () {
                              setState(() {
                                Global.g1.InvoiceScreenList.remove(e);
                              });
                            },
                              child: Icon(Icons.delete)),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text("${e['Total']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),).toList(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'invoice');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
