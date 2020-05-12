import 'package:flutter/material.dart';
main()
{
//  runAPP 函数
 runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title: Text("我的主页",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                  color: Colors.red,
                  fontSize: 36,
              ),
          ) ,
         ) ,

        body: Center(

          child: Text(
            "！",
            style: TextStyle
              (color: Colors.orange,
              fontSize: 60,
            ),
          ),
        ),
      )
    )
 );
}