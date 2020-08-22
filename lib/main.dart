import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_shop/pages/home_screen/home_screen.dart';
import 'package:flutter_online_shop/constants/constants.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor:kTextColor ),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
    );
  }
}