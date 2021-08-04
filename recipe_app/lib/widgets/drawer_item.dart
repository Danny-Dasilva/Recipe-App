import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class DrawerItem {
  final String title;
  final IconData icon;


  const DrawerItem({
    this.title,
    this.icon,
  });
}


class DrawerItems {
  static const home = DrawerItem(
    title: 'Home',
    icon: FontAwesomeIcons.home
    );
}