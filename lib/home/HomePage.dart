import 'package:flutter/material.dart';
import 'package:flutter_blogy/pages/AboutPage.dart';
import 'package:flutter_blogy/pages/DashboardPage.dart';
import 'package:flutter_blogy/pages/SettingsPage.dart';

class HomePage extends StatefulWidget {

  final drawerItems = [
    new DrawerItem("Dashboard", Icons.rss_feed),
    new DrawerItem("About us", Icons.local_pizza),
    new DrawerItem("Settings", Icons.info)
  ];

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }

}

class HomePageState extends State<HomePage>{

  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new DashboardPage();
      case 1:
        return new AboutPage();
      case 2:
        return new SettingsPage();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }

    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset:false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.orange,
                Colors.orangeAccent,
                Colors.amber
              ],
            ),
          ),
        ),

        title: Center(
          child: new Text(widget.drawerItems[_selectedDrawerIndex].title),
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.chat_bubble),
              color: Colors.white,
              onPressed: (){
              }
          ),
        ],
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("John Doe"), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}

class DrawerItem{

  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}
