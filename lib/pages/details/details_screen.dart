import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_shop/models/products_model.dart';

import 'details_screen_components/body.dart';

class DetailsScreen extends StatelessWidget {

  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),

    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back,
        color: Colors.white,
        ),

        onPressed: ()=>{
          //Return to the home page
          Navigator.pop(context)
        },

      ),
      actions: [
        IconButton(
          icon: Icon(Icons.add_shopping_cart,color: Colors.white,),
        ),
        IconButton(
          icon: Icon(Icons.zoom_in,color: Colors.white,),
        ),
      ],
    );
  }
}
