import 'package:app1_flutter/screens/cart/provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountHomeWidget extends StatelessWidget {
  CountProvider _countProvider;
  @override
  Widget build(BuildContext context) {
    print("build called");
    _countProvider = Provider.of<CountProvider>(context,
        listen: false); // listen false 시에 플러스 마이너스 버튼 에 대한 build메소드 호출이 되지 않는다.
    return Scaffold(
      body: Center(
          //플러스 마이너스 버튼 동작에 대하여 컨슈머를 등록하여 변경시 이곳으로만 동작한다.
          //Build가 여러번 호출 될 경우 앱 속도 저하가 발생될 수 있다.
          child: Consumer<CountProvider>(builder: (context, provider, child) {
        return Text(
          provider.count.toString(),
          style: Theme.of(context)
              .textTheme
              .headline1
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        );
      })),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {
                _countProvider.add();
              },
              icon: Icon(Icons.add)),
          IconButton(
              onPressed: () {
                _countProvider.remove();
              },
              icon: Icon(Icons.remove)),
        ],
      ),
    );
  }
}
