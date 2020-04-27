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

class HyHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HyhomeProduct("Apple1","详情","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588002257841&di=6948bd92d157ca0f111f237a84c18076&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180514%2F06%2F1526249163-XdGVHqcOYr.jpg"),
        HyhomeProduct("Apple2","haha","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588002257841&di=6948bd92d157ca0f111f237a84c18076&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180514%2F06%2F1526249163-XdGVHqcOYr.jpg"),
        HyhomeProduct("apple3","你好","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588002257841&di=6948bd92d157ca0f111f237a84c18076&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180514%2F06%2F1526249163-XdGVHqcOYr.jpg")
      ],
    );
  }
}


class HyhomeProduct extends StatelessWidget {
  final  String   title;
  final  String   desc;
  final  String   imageURL;

  final style1 = TextStyle(fontSize: 24,color: Colors.orange);
  final style2 = TextStyle(fontSize: 20,color: Colors.green);

  HyhomeProduct(this.title,this.desc,this.imageURL);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,//边框宽度
          color: Colors.black12,
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(this.title,style: style1),
          SizedBox(height: 8),
          Text(this.desc,style: style2),
          SizedBox(height: 8),
          Image.network(imageURL)
        ],
      ),
    );
  }
}


