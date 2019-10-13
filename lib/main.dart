import 'package:flutter/material.dart';
import 'package:side_drawer_menu/SideDrawerMenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Side Drawer',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: SideDrawerMenu(),
    );
  }
}
