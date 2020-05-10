import 'package:flutter/material.dart';

main()=>runApp(MyAPP());

/*
//widget    有状态的widge
 有状态的 Widget StatefulWidget  在运行状态时候，有一个数据需要改变
 无状态的  Widge    StatelessWidget  无状态
*/

class  MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class  HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        "hello yusheng",
        style: TextStyle
          (color: Colors.orange,
          fontSize: 30,
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:HomeAppBar() ,
      body: HomeContent(),
    );
  }
}

//无状态的创建
class  HomeAppBar extends StatelessWidget with PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: new Text("我的hello",
        style: TextStyle(
            color: Colors.white,
            fontSize: 36
        ),
      ),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(64);
}


//有状态的创建
class ApplicationToolbar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _ApplicationToolbarState createState() => _ApplicationToolbarState();
  @override
  Size get preferredSize => new Size.fromHeight(50);
}
//有状态的创建
class _ApplicationToolbarState extends State<ApplicationToolbar> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: Text('自定义AppBar'),
      preferredSize: widget.preferredSize,
    );
  }
}






