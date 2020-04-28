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
    final String imageurl = "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2913529070,3813942882&fm=15&gp=0.jpg";
    final String imageurl2 ="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588005049122&di=1cc31aa2a3c32dabbbdf093317aad20e&imgtype=0&src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201701%2F24%2F20170124110951_nCvWX.thumb.700_0.jpeg";
    final String imageUrl3 = "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588005228080&di=6db75a016ba3d4456aac3adf7023ebd7&imgtype=0&src=http%3A%2F%2Fcdn.duitang.com%2Fuploads%2Fitem%2F201409%2F08%2F20140908130732_kVXzh.jpeg";
    return ListView(
      children: <Widget>[
        HyhomeProduct("Apple1","详情",imageurl),
        HyhomeProduct("Apple2","haha",imageurl2),
        HyhomeProduct("apple3","你好",imageUrl3),
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(this.title,style: style1),
            ],
          ),
          SizedBox(height: 8),
          Text(this.desc,style: style2),
          SizedBox(height: 8),
          Image.network(imageURL)
        ],
      ),
    );
  }
}


