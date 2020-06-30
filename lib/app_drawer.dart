import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          ListTile(
            title: Text('Promotions'),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text('Loyalty'),
            onTap: () {
              
            },
          ),
        ],
      ),
    );
  }
}

