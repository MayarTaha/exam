import 'package:exam/home.dart';
import 'package:flutter/material.dart';

import 'exercise.dart';
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
          Exercise.routeName: (context) => Exercise(),
          HomeScreen.routeName: (context) => HomeScreen(),
          WorkOut.routeName: (context) => WorkOut(),
        });
  }
}