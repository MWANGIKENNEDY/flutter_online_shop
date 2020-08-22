import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_shop/constants/constants.dart';
import 'package:flutter_online_shop/models/products_model.dart';
import 'package:flutter_online_shop/pages/details/details_screen.dart';
import 'package:flutter_online_shop/pages/home_screen/home_screen_components/categories.dart';
import 'package:flutter_online_shop/pages/home_screen/home_screen_components/item_card.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Category(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:kDefaultPadding),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75
                ),
                itemBuilder: (context,index)=>ItemCard(
                  product: products[index],
                  //Navigate to new page
                  press: ()=>
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context)=>DetailsScreen(product: products[index],)
                          )),
                )
            ),
          ),
        )
      ],
    );
  }
}




