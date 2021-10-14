import 'package:flutter/material.dart';
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
      child: _swiperWidget(),
    );
  }
}

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
