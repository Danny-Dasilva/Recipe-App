import 'package:flutter/material.dart';

class EX extends StatefulWidget {
  @override
  _EXState createState() => _EXState();
}

class _EXState extends State<EX> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: Text(
           "Explore",
           style: TextStyle(
             color: Colors.white,
           ),
         ),
       ),
    );
  }
}