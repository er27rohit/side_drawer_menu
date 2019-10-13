import 'package:flutter/material.dart';
//import 'package:flutter_ui_challenges/src/pages/animations/animation1/animation1.dart';
//import 'package:flutter_ui_challenges/src/utils/oval-right-clipper.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

bool themeBool = true ;

class SideDrawerMenu extends StatefulWidget {
  @override
  _SideDrawerMenuState createState() => _SideDrawerMenuState();
}

class _SideDrawerMenuState extends State<SideDrawerMenu> {

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Side Drawer Menu'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _key.currentState.openDrawer();
          },
        ),
      ),
      drawer: _buildDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network("https://wallpapersmug.com/download/1600x900/ddcbbf/food-pizza-baking.jpg", fit: BoxFit.fill,),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10.0)),
            ),
            SizedBox(height: 10.0),
            Container(
              child: Image.network("https://images.wallpaperscraft.com/image/food_bread_bakery_products_biscuits_poppy_rope_heart_shape_candle_75175_1600x900.jpg", fit: BoxFit.fill),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10.0)),
            ),
            SizedBox(height: 10.0),
            Container(
              child: Image.network("https://images.wallpaperscraft.com/image/fast_food_hamburgers_jotas_mastiffs_ketchup_44609_1600x900.jpg", fit: BoxFit.fill),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ],
        ),
      ),
    );
  }

  _buildDrawer() {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color:themeBool? Colors.white:Colors.grey[800], boxShadow: [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.wb_sunny,
                        color: themeBool? Colors.amber : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          if (themeBool)
                          themeBool = false;
                        else
                          themeBool = true;
                        });
                        
                      },
                    ),
                  ),
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.red, Colors.blueGrey])),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/sample.jpg'),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Ethan Hunt",
                    style: TextStyle(color: Colors.red, fontSize: 18.0),
                  ),
                  Text(
                    "@hunt_007",
                    style: TextStyle(color: Colors.green, fontSize: 16.0),
                  ),
                  SizedBox(height: 30.0),
                  _buildRow(Icons.home, "Home"),
                  _buildDivider(),
                  _buildRow(Icons.person_pin, "Your profile"),
                  _buildDivider(),
                  _buildRow(Icons.settings, "Settings"),
                  _buildDivider(),
                  _buildRow(Icons.email, "Contact us"),
                  _buildDivider(),
                  _buildRow(Icons.info_outline, "Help"),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: Colors.green,
    );
  }

  Widget _buildRow(IconData icon, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(children: [
        Icon(
          icon,
          color: Colors.green,
        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: TextStyle(color: Colors.green, fontSize: 16.0),
        ),
      ]),
    );
  }
}