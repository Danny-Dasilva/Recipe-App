
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
  // late double xOffset;
  // late double yOffset;
  // late double scaleFactor;

  double xOffset;
  double yOffset;
  double scaleFactor;
  @override
  void initState() {
    super.initState();

    openDrawer();
  }

  void openDrawer() => setState(() {
    xOffset = 230;
    yOffset = 150;
    scaleFactor = 0.6;
  });
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

  // return Container(
  //   transform: Matrix4.translationValues(xOffset, yOffset, 0)
  //   ..scale(scaleFactor),
  //   child: Master(),
  // );
}