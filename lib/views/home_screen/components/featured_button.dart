import 'package:megamall_project/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

Widget featuredButton({required String  ? title, required String icon}) {
  return Row(
    children: [
      Image.asset(icon,width: 60,fit: BoxFit.fill),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).padding(const EdgeInsets.all(4)).width(200).roundedSM.make();
}
