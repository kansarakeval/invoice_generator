import 'package:flutter/material.dart';
import 'package:invoice_generator/util/colors.dart';
import 'package:invoice_generator/util/global.dart';
import 'package:invoice_generator/util/pdf.dart';

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
                onPressed: () {
                  pdfGenerator();
                },
                icon: const Icon(
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
                const Center(
                    child: Text("Iphone Mobile Shope",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))),
                const Divider(height: 10, thickness: 3),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Central Seles Depo : plot # 11 , Block # ka, main Road-1,Section # 6, Mirpur, Dhaka 1216, Bangladesh",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                const Text(
                  "Tel : 9723727767",
                  style: TextStyle(fontSize: 20),
                ),
                const Text(
                  "Mobile : 9099487767",
                  style: TextStyle(fontSize: 20),
                ),
                const Divider(height: 10, thickness: 3),
                Column(
                  children: [
                    const Text(
                      "Customer Name : keval",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Customer Address : Varachha ",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Area Name : A.k.road ",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Divider(
                      height: 10,
                      thickness: 3,
                    ),
                    Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Quantity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Spacer(),
                            Text(
                              "Producat Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Spacer(),
                            Text(
                              "Total Amount",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
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
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "${e['Product']}",
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "${e['Total']}",
                                      style: const TextStyle(fontSize: 18),
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
