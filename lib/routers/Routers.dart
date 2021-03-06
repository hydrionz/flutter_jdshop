import 'package:flutter/material.dart';
import 'package:flutter_jdshop/pages/Search.dart';
import 'package:flutter_jdshop/pages/tabs/Tabs.dart';

//配置路由
final routes = {
  '/': (context) => Tabs(),
  "/search": (context) => SearchPage(),
};

//固定写法
 Route? Function(RouteSettings settings) onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
