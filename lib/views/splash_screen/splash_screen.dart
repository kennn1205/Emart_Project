// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
// ignore: unnecessary_import
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
// ignore: unnecessary_import
import 'package:megamall_project/consts/colors.dart';
import 'package:megamall_project/consts/consts.dart';
import 'package:megamall_project/views/auth_screen/login_screen.dart';
import 'package:megamall_project/widgets_common/applogo_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // tạo medthod để thây đổi màn hình sau 3 giây
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () { // hàm này sẽ thay đổi màn hình sau 3 giây (future.delayed) là hàm đồng bộ trong dart
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  // hàm khởi tạo
  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: redColor,
        body: Center(
            child: Column(children: [
          Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg,
                  width: 300)), // câu lệnh này sẽ hiển thị hình ảnh nền
          20.heightBox,
          appLogo(),
          10.heightBox,
          appname.text
              .fontFamily(bold)
              .size(22)
              .white
              .make(), // câu lệnh này sẽ hiển thị tên ứng dụng
          5.heightBox,
          appversion.text.white
              .make(), // câu lệnh này sẽ hiển thị phiên bản ứng dụng
          const Spacer(), // câu lệnh này sẽ tạo ra khoảng trống giữa các widget
          credits.text.white
              .fontFamily(semibold)
              .make(), // câu lệnh này sẽ hiển thị tên tác giả
          30.heightBox,
        ])));
  }
}
