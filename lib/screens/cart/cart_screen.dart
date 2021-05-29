import 'package:app1_flutter/screens/cart/count_home_widget.dart';
import 'package:app1_flutter/screens/cart/provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Sample"),
      ),
      body: ChangeNotifierProvider(
        create: (BuildContext conext) => CountProvider(),
        child: CountHomeWidget(),
      ),
    );
  }
}
