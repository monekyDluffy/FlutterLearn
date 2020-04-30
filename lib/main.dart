import 'package:flutter/material.dart';





class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(

      child: new Column(
        children: <Widget>[
          new MyAppBar(

          )
        ],
      ),

    );
  }
}
