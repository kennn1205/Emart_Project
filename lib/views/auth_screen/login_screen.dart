import 'package:get/get.dart';
import 'package:megamall_project/consts/consts.dart';
import 'package:megamall_project/consts/list.dart';
import 'package:megamall_project/views/home_screen/home.dart';
import 'package:megamall_project/views/auth_screen/signup_screen.dart';
import 'package:megamall_project/widgets_common/applogo_widget.dart';
import 'package:megamall_project/widgets_common/bg_widget.dart';
import 'package:megamall_project/widgets_common/custom_textfield.dart';
import 'package:megamall_project/widgets_common/our_button.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
          15.heightBox,

          Column(
            children: [
              customTextField(
                hint: emailHint,
                title: email,
              ),
              customTextField(
                hint: passwordHint,
                title: password,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: forgetPassword.text.size(14).make(),
                ),
              ),
              5.heightBox,
              // ourButton().box.width(context.screenWidth - 50 ).make(),
              ourButton(
                      color: redColor,
                      textColor: whiteColor,
                      title: login,
                      onPress: () {
                        Get.to(() => const Home()); 
                      })
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              5.heightBox,
              createNewAccount.text.color(fontGrey).make(),
              5.heightBox,
              ourButton(
                  color: lightGolden,
                  textColor: redColor,
                  title: signUp,
                  onPress: () {
                    Get.to(() => const SignupScreen());
                  }).box.width(context.screenWidth - 50).make(),
              10.heightBox,
              loginWith.text.color(fontGrey).make(),
              5.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(
                              socialIconList[
                                  index], // thuộc tính này sẽ lấy giá trị từ list ở trên gắn vào từng ảnh
                              width: 30,
                            ),
                          ),
                        )),
              ),
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
