import 'package:megamall_project/consts/consts.dart';
import 'package:megamall_project/consts/list.dart';
import 'package:megamall_project/widgets_common/home_buttons.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchHint,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    // swiper brand
                    VxSwiper.builder(
                      itemCount: slidersList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            slidersList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make(),
                        );
                      },
                      height: 150, // chiều cao của ảnh
                      viewportFraction: 1.0, // chiều rộng của ảnh
                      autoPlay: true, // tự động chuyển ảnh
                      autoPlayAnimationDuration:
                          1.seconds, // thời gian chuyển ảnh mỗi lần chuyển
                      autoPlayCurve: Curves.linear, // chuyển ảnh mượt mà
                      enableInfiniteScroll: true, // vô hạn cuộn
                      autoPlayInterval: 3.seconds, // thời gian chuyển ảnh
                      //bo tròn ảnh
                    ),
                    10.heightBox,
                    //deal button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => homeButtons(
                                height: context.screenHeight * 0.15,
                                width: context.screenWidth / 2.5,
                                icon: index == 0 ? icTodaysDeal : icFlashDeal,
                                title: index == 0 ? todayDeal : flashsale,
                              )),
                    ),
                    // 2nd swiper
                    10.heightBox,
                    // swiper brand
                    VxSwiper.builder(
                      itemCount: slidersList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            secondSlidersList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make(),
                        );
                      },
                      height: 150, // chiều cao của ảnh
                      viewportFraction: 1.0, // chiều rộng của ảnh
                      autoPlay: true, // tự động chuyển ảnh
                      autoPlayAnimationDuration:
                          1.seconds, // thời gian chuyển ảnh mỗi lần chuyển
                      autoPlayCurve: Curves.linear, // chuyển ảnh mượt mà
                      enableInfiniteScroll: true, // vô hạn cuộn
                      autoPlayInterval: 3.seconds, // thời gian chuyển ảnh
                      //bo tròn ảnh
                    ),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          6,
                          (index) => Padding(
                            padding: const EdgeInsets.only(
                                right: 15.0, left: 8, bottom: 5, top: 5),
                            child: homeButtons(
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth / 3,
                              //icon: index == 0 ? icTopCategories : index ==1 ? icBrands :icopSeller,
                              icon: index == 0
                                  ? icTopCategories
                                  : index == 1
                                      ? icBrands
                                      : index == 2
                                          ? icTopSeller
                                          : index == 3
                                              ? icTopCategories
                                              : index == 4
                                                  ? icTopSeller
                                                  : icTopCategories,
                              //title: index == 0 ? topCategories : index == 1 ? brand : topSeTllers,
                              title: index == 0
                                  ? topCategories
                                  : index == 1
                                      ? brand
                                      : index == 2
                                          ? topSellers
                                          : index == 3
                                              ? topCategories
                                              : index == 4
                                                  ? topSellers
                                                  : topCategories,
                            ),
                          ),
                        ),
                      ),
                    ),
                    10.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featuredCategories.text
                            .color(darkFontGrey)
                            .fontFamily(semibold)
                            .size(18)
                            .make()),
                    10.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featuredCategories.text
                            .color(darkFontGrey)
                            .fontFamily(semibold)
                            .size(18)
                            .make()),
                    10.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featuredCategories.text
                            .color(darkFontGrey)
                            .fontFamily(semibold)
                            .size(18)
                            .make()),
                    10.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featuredCategories.text
                            .color(darkFontGrey)
                            .fontFamily(semibold)
                            .size(18)
                            .make()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
