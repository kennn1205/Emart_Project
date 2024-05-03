import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:megamall_project/consts/consts.dart';
import 'package:megamall_project/consts/list.dart';
import 'package:megamall_project/views/profile_screen/components/details_cart.dart';
import 'package:megamall_project/widgets_common/bg_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override // Add the following code inside the build method
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // chỉnh sửa profile button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  child: const Icon(Icons.edit, color: whiteColor)
                      .box
                      .make()
                      .objectCenterRight()
                      .onTap(() {
                //test
              })),
            ),
            Row(
              children: [
                Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make(),
                10.widthBox,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy User".text.fontFamily(semibold).white.make(),
                    5.heightBox,
                    "abcxasd@gmail.com".text.fontFamily(semibold).white.make(),
                  ],
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                      color: whiteColor,
                    )),
                    onPressed: () {},
                    child: logout.text.fontFamily(semibold).white.make())
              ],
            ),
            20.heightBox,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCart(
                    count: "00",
                    title: "in your cart",
                    width: context.screenWidth / 3.4),
                detailsCart(
                    count: "32",
                    title: "in your wishlist",
                    width: context.screenWidth / 3.4),
                detailsCart(
                    count: "675",
                    title: "your orders",
                    width: context.screenWidth / 3.4),
              ],
            ),
            //button section
            ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const Divider(
                          color: whiteColor,
                        ),
                    itemCount: profileButtonList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset(
                          profileButtonIcons[index],
                          width: 22,
                        ),
                        title: profileButtonList[index]
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                      );
                    })
                .box
                .white
                .rounded
                .margin(const EdgeInsets.all(12))
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .shadowSm
                .make()
                .box
                .color(redColor)
                .make(),
          ],
        ),
      ),
    ));
  }
}
