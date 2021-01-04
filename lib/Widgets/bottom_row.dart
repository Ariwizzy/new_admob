import 'package:flutter/material.dart';
import 'package:high_cpc_app/Screens/bbc.dart';
import 'package:high_cpc_app/Screens/cnn.dart';
import 'package:high_cpc_app/Screens/contact.dart';
import 'package:high_cpc_app/Screens/nairaland.dart';

class BottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  BottomBar(this.text, this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      height: 53,
      width: MediaQuery.of(context).size.width / 5,
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            color: Color(0xff676767),
            size: 25,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey[500], fontSize: 10.4),
          )
        ],
      ),
    );
  }
}

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context,  CNN.RouteName);
            },
            child: BottomBar("Home", Icons.home),
          ),
          GestureDetector(
            onTap: () {
             Navigator.pushReplacementNamed(context, BBC.RouteName);
            },
            child: BottomBar("Cart", Icons.shopping_cart),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushReplacementNamed(context, NairaLand.RouteName);
            },
            child: BottomBar("BookMark", Icons.bookmark_border),
          ),
          GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, Contact.RouteName);
              },
              child: BottomBar("Profile", Icons.person)),
        ],
      ),
    );
  }
}
