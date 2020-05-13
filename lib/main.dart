import 'package:flutter/material.dart';
main()=>runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
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
        body: HYBody()
    );
  }
}


class HYBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView(
          children: <Widget>[
            HyHomeProductItem("Apple1","xiangqing","https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2913529070,3813942882&fm=15&gp=0.jpg"),
            HyHomeProductItem("Apple2","xiangqing","https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2913529070,3813942882&fm=15&gp=0.jpg"),
            HyHomeProductItem("Apple3","xiangqing","https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2913529070,3813942882&fm=15&gp=0.jpg")
          ],
        );
  }
}

class HyHomeProductItem extends StatelessWidget {

  final String   title;
  final String   desc;
  final String   imageURL;

  final textStyle = TextStyle(color: Colors.orange,fontSize: 25);
  final textStyle1 = TextStyle(color: Colors.green,fontSize: 20);

  HyHomeProductItem(this.title,this.desc,this.imageURL);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(title,style: textStyle),
        Text(desc,style: textStyle1),
        Image.network(imageURL),
        Checkbox(
          value: false,
          onChanged: (bool value) {

            }),
    ]
      );
  }
}



