import 'package:flutter/material.dart';
import 'package:flutter_jdshop/pages/tabs/Tabs.dart';
import 'package:flutter_jdshop/routers/Routers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      initialRoute: "/",
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
