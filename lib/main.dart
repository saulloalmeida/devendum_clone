import 'package:devendum_clone/one_route.dart';
import 'package:devendum_clone/two_route.dart';
import 'package:flutter/material.dart';
import 'bottom_navigator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes: {
        // CustomListView '/': (context) => BottomNavigator(),
         '/': (context) => BottomNavigator(),
        '/one': (context) => OneRoute(),
        '/two': (context) => TwoRoute(),
      },
    );
  }
}
