import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_shop/pages/home_screen/home_screen_components/body.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.add_shopping_cart),
        ),
        IconButton(
          icon: Icon(Icons.zoom_in),
        ),
      ],
    );
  }
  
}