import 'package:get/get.dart';
import 'package:megamall_project/views/splash_screen/splash_screen.dart';

import 'consts/consts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // sử dụng getX để thay thế MaterialApp cho việc quản lý các màn hình và các state
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: appname,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
          ),
          fontFamily: regular,
        ),
        home: const SplashScreen());
  }
}
