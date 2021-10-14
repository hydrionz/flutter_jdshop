import 'package:flutter/material.dart';
import 'package:flutter_jdshop/pages/tabs/Cart.dart';
import 'package:flutter_jdshop/pages/tabs/Category.dart';
import 'package:flutter_jdshop/pages/tabs/Home.dart';
import 'package:flutter_jdshop/pages/tabs/User.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  List pages = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    //设置尺寸（填写设计中设备的屏幕尺寸）如果设计基于360dp * 690dp的屏幕
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(750, 1334),
        orientation: Orientation.portrait);
    return Scaffold(
      appBar: AppBar(
        title: Text("JD-Shop"),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "购物车"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "我的"),
        ],
      ),
    );
  }
}
