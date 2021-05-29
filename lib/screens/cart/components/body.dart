
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(8.0),
          itemCount: 3,
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            child: Divider(), //list 사이에 구분선 추가 
          ),  
          itemBuilder: (BuildContext context, int index) => listInfo(context, index) ),
      ),
    );
  }


  Widget listInfo(BuildContext context, int index) {
    print('cart listInfo');
    return Container(
      color: Colors.amber,
      child: Padding(
        padding: EdgeInsets.only(
          right:10,
          left: 10,
          top: 10,
          bottom: 10,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/bag2.png',
              width: 80,
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.only(
                left:15,
              ),
              child: Column(
                children: [
                  Text('품목 : '),
                  Text('개수 : '),
                  Text('금액 : '),
                ],
              )     ,
            ),
          ],
        ),
      )
    );
  }
}