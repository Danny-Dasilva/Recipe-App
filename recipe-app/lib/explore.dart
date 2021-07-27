import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  Explore({Key key}) : super(key: key);
  
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        leading: Icon(
          Icons.sort,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16,),
            child: Icon (
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}