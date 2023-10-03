import 'package:invoice_generator/util/global.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart'as pw;
import 'package:printing/printing.dart';
void pdfGenerator() async{
  final pdf = pw.Document();

  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (ConText){
      return  pw.Column(
        children: [
          pw.Center(
              child: pw.Text("Iphone Mobile Shope",
                  style: pw.TextStyle(
                      fontSize: 25, fontWeight:pw.FontWeight.bold))),
          pw.Divider(height: 10, thickness: 3),
          pw.Padding(
            padding: pw.EdgeInsets.all(8.0),
            child: pw.Text(
              "Central Seles Depo : plot # 11 , Block # ka, main Road-1,Section # 6, Mirpur, Dhaka 1216, Bangladesh",
              style: pw.TextStyle(fontSize: 17),
            ),
          ),
          pw.Text(
            "Tel : 9723727767",
            style: pw.TextStyle(fontSize: 20),
          ),
          pw.Text(
            "Mobile : 9099487767",
            style: pw.TextStyle(fontSize: 20),
          ),
          pw.Divider(height: 10, thickness: 3),
          pw.Column(
            children: [
              pw.Text(
                "Customer Name : keval",
                style: pw.TextStyle(
                    fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                "Customer Address : Varachha ",
                style: pw.TextStyle(
                    fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                "Area Name : A.k.road ",
                style: pw.TextStyle(
                    fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.Divider(
                height: 10,
                thickness: 3,
              ),
              pw.Column(
                children: [
                  pw.Row(
                    children: [
                      pw.Text(
                        "Quantity",
                        style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold, fontSize: 15),
                      ),
                      pw.Spacer(),
                      pw.Text(
                        "Producat Name",
                        style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold, fontSize: 15),
                      ),
                      pw.Spacer(),
                      pw.Text(
                        "Total Amount",
                        style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  pw.Column(
                    children: Global.g1.InvoiceScreenList
                        .map(
                          (e) => pw.Row(
                        children: [
                          pw.Text(
                            "${e['No']}",
                            style: const pw.TextStyle(fontSize: 18),
                          ),
                          pw.Spacer(),
                          pw.Text(
                            "${e['Product']}",
                            style: const pw.TextStyle(fontSize: 18),
                          ),
                          pw.Spacer(),
                          pw.Text(
                            "${e['Total']}",
                            style: const pw.TextStyle(fontSize: 18),
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
      );
    }
  ));
  await Printing.layoutPdf(onLayout: (Formate)async => pdf.save());
}