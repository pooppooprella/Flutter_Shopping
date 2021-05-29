import 'package:app1_flutter/constants.dart';
import 'package:app1_flutter/models/Product.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
          child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: likes.length,
        itemBuilder: (context, index) => GestureDetector(
          child: Column(
            children: <Widget>[Text('test1')],
          ),
        ),
      )),
    );
  }
}
