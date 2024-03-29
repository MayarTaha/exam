import 'package:flutter/material.dart';
import 'package:exam/home.dart';
import 'news.dart';
import 'workout.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          WorkOut.routeName: (context) => WorkOut(),
          News.routeName: (context) => News(),
        });
  }
}