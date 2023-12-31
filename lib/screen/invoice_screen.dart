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
  double total = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: grayprimary1,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              )),
          centerTitle: true,
          title: const Text(
            "Invoice Genrator",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
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
                              icon: const Icon(Icons.arrow_drop_down)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        keyboardType: TextInputType.phone,
                        controller: txtNo,
                        decoration: const InputDecoration(
                          hintText: "Invoice No.",
                        ),
                      ),
                      const SizedBox(
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
                              icon: const Icon(Icons.arrow_drop_down)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: txtType,
                        decoration: const InputDecoration(
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
                              decoration: const InputDecoration(
                                hintText: "Quantity",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          SizedBox(
                            width: 120,
                            child: TextField(
                              controller: txtEarn,
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                hintText: "Price",
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
                                  setState(() {
                                    total = double.parse(txtEarn.text) *
                                        double.parse(txtQuantity.text);
                                  });
                                  Map m1 ={
                                    "No" : txtNo.text,
                                    "CustomerName" : txtName.text,
                                    "Product" : txtProduactName.text,
                                    "Quantity": txtQuantity,
                                    "Earn": txtEarn,
                                    "Total" : total,
                                  };
                                  Global.g1.InvoiceScreenList.add(m1);
                                  Navigator.pop(context);
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
                            Text("Total Payment : ${total}",
                              style:
                                  const TextStyle(color: Colors.black, fontSize: 20),
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