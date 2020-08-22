import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_shop/constants/constants.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex=0;
  List<String> categories=["Hand Bag","Shoes","Footwear","Dresses","Hats","Lingeries","Nails"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context,index)=>buildText(index),
        ),
      ),
    );
  }

  Widget buildText(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex=index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            Text(
                categories[index]
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding/4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black:Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}