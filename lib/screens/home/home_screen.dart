import 'package:app1_flutter/screens/home/components/body.dart';
import 'package:app1_flutter/screens/like/like_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app1_flutter/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      // body: Body(),
      // appBar: buildAppBar(),
      body: Body(),
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

      //버튼 셋팅
      actions: <Widget>[
        //좋아요 버튼
        IconButton(
            icon: Container(
              padding: EdgeInsets.all(8),
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: Color(0xFFFF6464),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset("assets/icons/heart.svg"),
            ),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => LikeScreen()))),

        //검색버튼
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),

        //카트버튼
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
