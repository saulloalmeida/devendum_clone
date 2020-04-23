import 'package:devendum_clone/one_route.dart';
import 'package:devendum_clone/two_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _currentIndex = 0;
  final _tabs = [
    OneRoute(),
    TwoRoute(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Text("CalcApp"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 30),
          children: <Widget>[
            // DrawerHeader(
            //   child: Text('Drawer Header'),
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            // ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
            ),
            ListTile(
              title: Text('Second'),
              onTap: () {
                Navigator.pushNamed(context, "/two");
              },
            ),
            ListTile(
              trailing: Icon(Icons.exit_to_app),
              title: Text("Sair"),
              onTap: (){
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          backgroundColor: Colors.blueGrey[800],
          unselectedItemColor: Colors.blueGrey[400],
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_activity),
              title: Text("Second"),
              backgroundColor: Colors.white,
            ),
          ]),
      body: _tabs[_currentIndex],
    );
  }
}
