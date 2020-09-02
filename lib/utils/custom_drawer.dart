import 'package:demo/pages/buttons_page.dart';
import 'package:demo/pages/chips_page.dart';
import 'package:demo/pages/images_page.dart';
import 'package:demo/pages/texts_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _DrawerItem {
  String title;
  IconData icon;
  String route;

  _DrawerItem({this.title, this.icon, this.route});
}

class CustomDrawer{
  
  static final _optionsItems = [
    _DrawerItem(title: "chip", icon: Icons.list, route: ChipsPage.ROUTE),
    _DrawerItem(title: "button", icon: Icons.list, route: ButtonsPage.ROUTE),
    _DrawerItem(title: "text", icon: Icons.list, route: TextsPage.ROUTE),
    _DrawerItem(title: "imagens", icon: Icons.list, route: ImagesPage.ROUTE),

  ];

  static Widget getDrawer(BuildContext context){
    List<Widget> items = _optionsItems.map((item) => _createItem(context, item)).toList();

    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blueGrey),
            accountEmail: Text("Sin email"),
            accountName: Text("sin nombre"),
          ),
          Column(
            children: items,
            )
        ]
      ),
    );
  }

  static Widget _createItem(BuildContext context, _DrawerItem item){
    return ListTile(
      leading: Icon(item.icon),
      title: Text(item.title),
      onTap: (){
        Navigator.pop(context);
        Navigator.pushNamed(context, item.route);
      },
    );
  }
}