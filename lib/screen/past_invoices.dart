import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/colors.dart';

class PastScreen extends StatefulWidget {
  const PastScreen({super.key});

  @override
  State<PastScreen> createState() => _PastScreenState();
}

class _PastScreenState extends State<PastScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: grayprimary1,
        centerTitle: true,
        leading: IconButton(onPressed: () {

        },
        icon: Icon(CupertinoIcons.back,color: Colors.white,),),
        title: Text(
          "Manage Products",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'invoice');
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
              )),
        ],
      ),
    ),);
  }
}
