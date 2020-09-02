import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_shop/models/products_model.dart';
import 'package:flutter_online_shop/constants/constants.dart';

class Body extends StatelessWidget {

  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        child: Stack(
          children: [

            Container(
              margin:EdgeInsets.only(top: size.height*0.3),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))
              ),


            ),

            Positioned(
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(left:kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "This is a king type of BAG",
                      style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white,fontWeight: FontWeight.bold
                      )
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: size.height*0.1,
              height: size.height*0.4,
              child: Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: size.height*0.11,),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(text: "Price\n"),
                                  TextSpan(text: "\$${product.price}",
                                    style: Theme.of(context).textTheme
                                        .headline4.copyWith(
                                        color: Colors.white,
                                    fontWeight: FontWeight.bold
                                    )
                                  )
                                ]
                              ),
                            ),
                          )
                        ],
                      ),
                      Image.asset(product.image)
                    ],
                  ),
                  height: size.height*0.1,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: size.height*0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Color"),
                            Row(children: [
                              ColorDot(color: product.color,
                                isSelected: true,
                              ),
                              ColorDot(color: Colors.red,),
                              ColorDot(color: Colors.green,),
                            ],),
                          ],
                        ),
                      ),

                      Expanded(
                        child:     RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    style: TextStyle(
                                        color: Colors.black
                                    ),
                                    text: "Size\n"

                                ),
                                TextSpan(
                                    text: "${product.size}",
                                    style: Theme.of(context).textTheme.headline5
                                        .copyWith(fontWeight: FontWeight.bold)
                                )
                              ]
                          ),
                        )
                      )


                    ],
                  ),
                  Text(dummyText)
                ],

              ),

            )
          ],
        ),
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;

  final bool isSelected;

  const ColorDot({
    Key key,
    @required this.product,
    this.color,
    //by default is selected is false
    this.isSelected=false,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color:Colors.transparent
        )

      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
        ),

      ),
    );
  }
}
