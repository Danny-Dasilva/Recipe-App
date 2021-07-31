import 'package:flutter/material.dart';
import 'package:recipe/screens/explore.dart';
import 'package:recipe/screens/games/games.dart';
import 'package:recipe/screens/EX/ex.dart';
import 'package:recipe/constants.dart';
import 'package:recipe/shared/bottom_navigation_item.dart';


class Master extends StatefulWidget {
  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master> {

  List<bool> bottomNavigationItemStatus = [true, false, false, false];
  Widget currentWidgetView;

  @override
  void initState() {
    super.initState();
    setState(() {
      currentWidgetView = Explore();
    });
  }

  setCurrentVWIdgetView(int index){
    setState(() {
      switch (index){
        case 0: currentWidgetView = Explore(); break; 
        case 1: currentWidgetView = EX();   break;
        case 2: currentWidgetView = Games(); break;
        case 3: currentWidgetView = Games(); break;
      }
      bottomNavigationItemStatus = [index == 0, index == 1, index == 2, index == 3];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: AnimatedSwitcher(
         duration: Duration(milliseconds: 250),
         child: currentWidgetView,
       ),
       bottomNavigationBar: Container(
         height: 80,
         padding: EdgeInsets.only(bottom: 10),
         color: kBottomNavigationBar,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             BottomNavigationItem(
               iconData: Icons.home, 
               selected: bottomNavigationItemStatus[0],
               onPress: () {
                 setCurrentVWIdgetView(0);

               },
               ),
              BottomNavigationItem(
               iconData: Icons.search, 
               selected: bottomNavigationItemStatus[1],
               onPress: () {
                 setCurrentVWIdgetView(1);
               },
               ),
               BottomNavigationItem(
               iconData: Icons.search, 
               selected: bottomNavigationItemStatus[2],
               onPress: () {
                 setCurrentVWIdgetView(2);
               },
               ),
               BottomNavigationItem(
               iconData: Icons.search, 
               selected: bottomNavigationItemStatus[3],
               onPress: () {
                 setCurrentVWIdgetView(3);
               },
               ),
               
           ],
         ),
       ),
    );
  }
}