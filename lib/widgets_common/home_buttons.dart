import 'package:megamall_project/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

Widget homeButtons({ double? width,double? height,required String icon,String? title,onPress }) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon, width: 26),
      10.heightBox,
      todayDeal.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.rounded.white.size(width!,height!).shadowSm.make();
}
