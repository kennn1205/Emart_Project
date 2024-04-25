import 'package:megamall_project/consts/consts.dart';
// import 'package:flutter_boxicons/flutter_boxicons.dart';

Widget appLogo() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(icAppLogo, width: 77, height: 77),
    ),
  );
}
