import 'package:flutter/material.dart';
main()=>runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}


class HYhomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),

      ),
      body: HYBody()
    );
  }
}


class HYBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("test");
  }
}
