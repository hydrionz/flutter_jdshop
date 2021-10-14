import 'package:flutter/material.dart';
import 'package:flutter_jdshop/service/ScreenAdapter.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          _swiperWidget(),
          SizedBox(height: 10),
          _titleWidget("猜你喜欢"),
          SizedBox(height: 10),
          _guessLikeProductsWidget(),
          SizedBox(height: 10),
          _titleWidget("热门推荐"),
        ],
      ),
    );
  }
}

///轮播图组件
Widget _swiperWidget() {
  List<Map> imageList = [
    {"url": "https://www.itying.com/images/flutter/slide01.jpg"},
    {"url": "https://www.itying.com/images/flutter/slide02.jpg"},
    {"url": "https://www.itying.com/images/flutter/slide03.jpg"},
  ];
  var swiper = new Swiper(
    itemBuilder: (BuildContext context, int index) {
      return new Image.network(
        imageList[index]["url"],
        fit: BoxFit.fill,
      );
    },
    itemCount: imageList.length,
    pagination: new SwiperPagination(),
    control: new SwiperControl(),
    autoplay: true,
  );
  return Container(
    child: AspectRatio(
      aspectRatio: 2 / 1,
      child: swiper,
    ),
  );
}

///首页标题组件
Widget _titleWidget(String title) {
  return Container(
    height: ScreenAdapter.setHeight(34),
    margin: EdgeInsets.only(left: ScreenAdapter.setHeight(20)),
    padding: EdgeInsets.only(left: ScreenAdapter.setHeight(20)),
    decoration: BoxDecoration(
      border: Border(
        left: BorderSide(width: ScreenAdapter.setHeight(10), color: Colors.red),
      ),
    ),
    child: Text(
      title,
      style: TextStyle(
          color: Colors.black54, fontSize: ScreenAdapter.setFontSize(26)),
    ),
  );
}

///猜你喜欢图片列表组件
Widget _guessLikeProductsWidget() {
  return Container(
    padding: EdgeInsets.only(left: ScreenAdapter.setWidth(20)),
    height: ScreenAdapter.setHeight(170),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: ScreenAdapter.setWidth(20)),
                height: ScreenAdapter.setHeight(140),
                child: Image.network(
                  "https://www.itying.com/images/flutter/hot${index + 1}.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  height: ScreenAdapter.setHeight(30),
                  child: Text(
                    "图片${index + 1}",
                    style: TextStyle(fontSize: ScreenAdapter.setFontSize(20)),
                  ))
            ],
          );
        }),
  );
}
