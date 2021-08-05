
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
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Color.fromRGBO(21, 30, 61, 1),
    body: Stack(
      children: [
        buildDrawer(),
        buildPage(),
        
      ],
    ),
  );


  Widget buildDrawer() => SafeArea(
    child: DrawerWidget(),
  );
}

Widget buildPage() {

  final double xOffset = 230;
  return Container(
    transform: Matrix4.translationValues(xOffset, 0, 0),
    child: Master(),
  );
}