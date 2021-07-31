import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
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