import 'package:get/get.dart';
import 'package:megamall_project/consts/consts.dart';
import 'package:megamall_project/consts/list.dart';
import 'package:megamall_project/views/category_screen/category_detail.dart';
import 'package:megamall_project/widgets_common/bg_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).white.make(),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          padding:
              const EdgeInsets.only(top: 70, bottom: 10, left: 10, right: 10),
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 170,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(categoryImages[index],
                        width: 100, height: 100, fit: BoxFit.fill),
                    20.heightBox,
                    categoryList[index]
                        .text
                        .fontFamily(bold)
                        .color(darkFontGrey)
                        .align(TextAlign.center)
                        .size(12)
                        .make(),
                  ],
                )
                    .box
                    .white
                    .rounded
                    .clip(Clip.antiAlias)
                    .outerShadowSm
                    .make()
                    .onTap(() {
                  Get.to(() => CategoryDetails(
                      title: categoryList[
                          index])); // dòng này là chuyển hướng sang màn hình chi tiết danh mục theo index
                });
              }),
        ),
      ),
    );
  }
}
