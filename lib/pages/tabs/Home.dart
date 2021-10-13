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
    return ListView(
      children: [
        _swiperWidget(),
      Text("data")
      ],
    );
  }
}

Widget _swiperWidget() {
  return new Swiper(
    itemBuilder: (BuildContext context, int index) {
      return new Image.network(
        "http://via.placeholder.com/350x150",
        fit: BoxFit.fill,
      );
    },
    itemCount: 3,
    pagination: new SwiperPagination(),
    control: new SwiperControl(),
  );
}
