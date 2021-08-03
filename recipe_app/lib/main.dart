import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe/screens/master.dart';
import 'package:recipe/widgets/drawer_widget.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: Master(),
    );
  }
}

class _MasterState extends State<Master> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: buildDrawer(),
  );


  Widget buildDrawer() => DrawerWidget();
}