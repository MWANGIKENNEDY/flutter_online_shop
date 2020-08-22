import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_shop/models/products_model.dart';

class ItemCard extends StatelessWidget {

  final Product product;

  final Function press;

  const ItemCard({
    Key key, this.product, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: press,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16.0)
              ),
              child: Image.asset(product.image),
            ),
          ),
          Text("\$${product.price}"),
        ],
      ),
    );
  }
}