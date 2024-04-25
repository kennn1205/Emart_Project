import 'package:get/get.dart';
import 'package:megamall_project/widgets_common/applogo_widget.dart';
import 'package:megamall_project/widgets_common/bg_widget.dart';
import 'package:megamall_project/widgets_common/custom_textfield.dart';
import 'package:megamall_project/widgets_common/our_button.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/consts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck =
      false; // tạo biến kiểm tra checkbox (trạng thái ban đầu là false)

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
        children: [
          (context.screenHeight * 0.07).heightBox,
          appLogo(),
          10.heightBox,
          "John the $appname".text.fontFamily(bold).white.size(18).make(),
          15.heightBox,

          Column(
            children: [
              customTextField(
                hint: nameHint,
                title: name,
              ),
              customTextField(
                hint: emailHint,
                title: email,
              ),
              customTextField(
                hint: passwordHint,
                title: password,
              ),
              customTextField(
                hint: passwordHint,
                title: retypePassword,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: forgetPassword.text.size(14).make(),
                ),
              ),

              Row(
                children: [
                  Checkbox(
                      checkColor: whiteColor,
                      activeColor: redColor,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          // set trạng thái của checkbox khi click vào nó
                          isCheck = newValue;
                        });
                      }),
                  10.widthBox,
                  Expanded(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                        text: "I agree to the ",
                        style: TextStyle(
                            fontSize: 12, fontFamily: bold, color: fontGrey),
                      ),
                      TextSpan(
                        text: termAndCon,
                        style: TextStyle(
                            fontSize: 12, fontFamily: bold, color: redColor),
                      ),
                      TextSpan(
                        text: " & ",
                        style: TextStyle(
                            fontSize: 12, fontFamily: bold, color: fontGrey),
                      ),
                      TextSpan(
                        text: privacyPolicy,
                        style: TextStyle(
                            fontSize: 12, fontFamily: bold, color: redColor),
                      ),
                    ])),
                  )
                ],
              ),
              5.heightBox,
              // ourButton().box.width(context.screenWidth - 50 ).make(),
              ourButton(
                      color: isCheck == true
                          ? redColor
                          : lightGrey, // nếu checkbox được check thì màu sẽ là redColor, ngược lại là lightGrey
                      textColor: whiteColor,
                      title: signUp, 
                      onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: alreadyHaveAccount,
                  style: TextStyle(fontFamily: bold, color: fontGrey),
                ),
                TextSpan(
                  text: login,
                  style: TextStyle(fontFamily: bold, color: redColor),
                ),
              ])).onTap(() {
                Get.back();
              }),
              10.heightBox,
            ],
          )
              .box
              .white
              .rounded
              .padding(const EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .shadowMax
              .make() // 70 là khoảng cách giữa 2 bên màn hình so với box
        ],
      )),
    ));
  }
}
