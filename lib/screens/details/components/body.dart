import 'package:app1_flutter/constants.dart';
import 'package:app1_flutter/models/Product.dart';
import 'package:app1_flutter/screens/details/components/project_title_with_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';

class Body extends StatelessWidget{
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height *.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPadding / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ]
            )
          ),
        ],
      )

    );
  }
}




