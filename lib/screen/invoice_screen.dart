import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_generator/util/colors.dart';
import 'package:invoice_generator/util/global.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtNo = TextEditingController();
  TextEditingController txtProduactName = TextEditingController();
  TextEditingController txtType = TextEditingController();
  TextEditingController txtQuantity = TextEditingController();
  TextEditingController txtEarn = TextEditingController();
  TextEditingController txtTotal = TextEditingController();
  double total = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: grayprimary1,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
          centerTitle: true,
          title: Text(
            "Invoice Genrator",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                )),
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
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Customer Name",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey.shade600),
                          )),
                      TextField(
                        controller: txtName,
                        decoration: InputDecoration(
                          hintText: "Choose Customer Name",
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_drop_down)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        keyboardType: TextInputType.phone,
                        controller: txtNo,
                        decoration: InputDecoration(
                          hintText: "Invoice No.",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Choose Product",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey.shade600),
                          )),
                      TextField(
                        controller: txtProduactName,
                        decoration: InputDecoration(
                          hintText: "Choose Product",
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_drop_down)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: txtType,
                        decoration: InputDecoration(
                          hintText: "Type",
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 120,
                            child: TextField(
                              controller: txtQuantity,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: "Quantity",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          SizedBox(
                            width: 120,
                            child: TextField(
                              controller: txtEarn,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: "Bonus",
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            TextButton(
                                onPressed: () {
                                  Global g1 = Global();
                                  g1.InvoiceScreenList.addAll([
                                    txtEarn.text,
                                    txtQuantity.text,
                                    txtType.text,
                                    txtProduactName.text,
                                    txtNo.text,
                                    txtName.text
                                  ]);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content:
                                            Text("${g1.InvoiceScreenList}")),
                                  );
                                  setState(() {
                                    total = double.parse(txtEarn.text) *
                                        double.parse(txtQuantity.text);
                                  });
                                },
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      backgroundColor: grayprimary1,
                                      fontSize: 20),
                                )),
                            Divider(
                              height: 10,
                              color: Colors.grey.shade600,
                            ),
                            Text(
                              "Total Payment : ${total}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}