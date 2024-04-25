import 'package:megamall_project/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

Widget customTextField(
    {String? title, String? hint,   controller}) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    title!.text.color(redColor).fontFamily(semibold).size(16).make(),
    5.heightBox,
    TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: textfieldGrey,
          fontFamily: semibold,
        ),
        hintText: hint,
        isDense: true,
        fillColor: lightGrey,
        filled: true,
        border: InputBorder.none,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: redColor),
        ),
      ),
    ),
    5.heightBox,
  ]);
}
