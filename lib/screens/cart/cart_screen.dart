import 'package:app1_flutter/screens/cart/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
      ),
      body: Container(
        child: Body(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,

      //뒤로가기버튼
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),

      //검색버튼
      // actions: <Widget>[
      //   IconButton(
      //     icon: SvgPicture.asset(
      //       "assets/icons/search.svg",
      //       color: kTextColor,
      //     ),
      //     onPressed: () {

      //     },
      //   ),

      //   //카트버튼
      //   IconButton(
      //     icon: SvgPicture.asset(
      //       "assets/icons/cart.svg",
      //       color: kTextColor,
      //     ),
      //     onPressed: () => Navigator.push(context,
      //               MaterialPageRoute(
      //                   builder: (context) => CartScreen())),
      //   ),
      //   SizedBox(
      //     width: kDefaultPadding / 2,
      //   )
      // ],
    );
  }
}