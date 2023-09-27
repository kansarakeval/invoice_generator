import 'package:flutter/cupertino.dart';
import 'package:invoice_generator/screen/invoice_screen.dart';
import 'package:invoice_generator/screen/Manage_product.dart';
import 'package:invoice_generator/screen/pdf_screen.dart';

Map<String,WidgetBuilder> screen_routes={
  '/': (context) => PastScreen(),
  'invoice': (context) => InvoiceScreen(),
  'PDF': (context) => PdfScreen(),

};