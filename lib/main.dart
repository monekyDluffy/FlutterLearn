import 'package:flutter/material.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HYhomePage(),
    );
  }
}


class HYhomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body:HyHomeContent() ,
    );
  }
}


class HyHomeContent  extends StatefulWidget
{
 @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}

class _HyHomeContentState extends State<HyHomeContent>
{

  String   title = "why";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("");
  }
}


