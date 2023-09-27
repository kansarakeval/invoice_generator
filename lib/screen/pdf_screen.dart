import 'package:flutter/material.dart';
import 'package:invoice_generator/util/colors.dart';
import 'package:invoice_generator/util/global.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: grayprimary,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.print,
                  color: Colors.white,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(
                    child: Text("Iphone Mobile Shope",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))),
                Divider(height: 10, thickness: 3),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Central Seles Depo : plot # 11 , Block # ka, main Road-1,Section # 6, Mirpur, Dhaka 1216, Bangladesh",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Text(
                  "Tel : 9723727767",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Mobile : 9099487767",
                  style: TextStyle(fontSize: 20),
                ),
                Divider(height: 10, thickness: 3),
                Column(
                  children: [
                    Text(
                      "Customer Name : keval",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Customer Address : Varachha ",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Area Name : A.k.road ",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      height: 10,
                      thickness: 3,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Quantity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Spacer(),
                            Text(
                              "Producat Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Spacer(),
                            Text(
                              "Total Amount",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                        Column(
                          children: Global.g1.InvoiceScreenList
                              .map(
                                (e) => Row(
                                  children: [
                                    Text(
                                      "${e['No']}",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Spacer(),
                                    Text(
                                      "${e['Product']}",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Spacer(),
                                    Text(
                                      "${e['Total']}",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              )
                              .toList(),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
