import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenAdapter {
  ///设置高度
  static double setHeight(num n) {
    return ScreenUtil().setHeight(n);
  }

  ///设置宽度
  static double setWidth(num n) {
    return ScreenUtil().setWidth(n);
  }

  ///设置圆角
  static double setRadius(num n) {
    return ScreenUtil().radius(n);
  }

  ///设置字体大小
  static double setFontSize(num n) {
    return ScreenUtil().setSp(n);
  }

  ///当前设备宽度 dp
  static double getScreenWidth() {
    return ScreenUtil().screenWidth;
  }

  ///当前设备高度 dp
  static double getScreenHeight() {
    return ScreenUtil().screenHeight;
  }
}
