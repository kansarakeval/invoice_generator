import 'package:flutter/cupertino.dart';
import 'package:invoice_generator/screen/invoice_screen.dart';
import 'package:invoice_generator/screen/past_invoices.dart';

Map<String,WidgetBuilder> screen_routes={
  '/': (context) => PastScreen(),
  'invoice': (context) => InvoiceScreen(),

};