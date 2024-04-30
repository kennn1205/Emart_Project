import 'package:get/get.dart';
import 'package:megamall_project/consts/consts.dart';
import 'package:megamall_project/views/category_screen/items_detail.dart';
import 'package:megamall_project/widgets_common/bg_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryDetails extends StatefulWidget {
  final String title;
  const CategoryDetails({super.key, required this.title});

  @override
  State<CategoryDetails> createState() => CategoryDetailsState();
}

class CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: widget.title.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics:
                  const BouncingScrollPhysics(), // BouncingScrollPhysics() là để cho phép cuộn
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Baby & Kids"
                        .text
                        .size(14)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered() // makeCentered() là để căn giữa
                        .box
                        .white
                        .roundedSM
                        .size(120, 60)
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            20.heightBox,
            //items container
            Expanded(
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 250),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(imgP5,
                            width: 200, height: 170, fit: BoxFit.fill),
                        10.heightBox,
                        'Laptop 4GB/64GB'
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        5.heightBox,
                        '\$600'
                            .text
                            .fontFamily(bold)
                            .color(redColor)
                            .size(16)
                            .make(),
                      ],
                    )
                        .box
                        .white
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .roundedSM
                        .outerShadow
                        .padding(const EdgeInsets.all(8))
                        .make()
                        .onTap(() {
                      Get.to(() => const ItemsDetails(title: "đáksadjaskd"));
                    });
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
