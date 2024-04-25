import 'package:megamall_project/consts/consts.dart';

Widget bgWidget({required Scaffold child}){
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgBackground),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}