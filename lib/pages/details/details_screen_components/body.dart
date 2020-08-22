import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_shop/models/products_model.dart';

class Body extends StatelessWidget {

  final Product product;
  const Body({Key key, this.product}) : super(key: key);
  @override

  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    return Stack(
      children: [

        Positioned(
          left: 0,
          right: 0,
          height: size.height*0.4,
          child: Container(
            decoration: BoxDecoration(
              color: product.color
            ),
            child: Text(",nkbkbk"),
          ),
        ),



        Positioned(
          left: 0,
          right: 0,
          top: size.height*0.3,
          height: size.height*0.6,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(60.0)),
              color: Colors.white
            ),
          ),
        ),

        Positioned(
          left: 0,
          right: 0,
          top: size.height*0.18,
          height: size.height*0.2,
          child: Container(
            child: Row(
              children: [
                Text("Kennedy"),
                Expanded(
                  child: Image.asset(product.image),
                )

              ],
            )
          ),

        ),



      ],
    );
  }
}

