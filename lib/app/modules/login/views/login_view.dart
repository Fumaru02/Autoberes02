import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ot_apps/app/modules/HomeDetails/views/autoberes_color.dart';
import 'package:ot_apps/app/modules/register/views/register_view.dart';
import '../controllers/login_controller.dart';
import 'package:ot_apps/register_form.dart';
import 'package:ot_apps/app/modules/login/views/login_view2.dart';

final controller = Get.put(LoginController());

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // Set the boolean variable to false when the user returns to the previous page
      onWillPop: () async => controller.showSignUpButton.value =
          !controller.showSignUpButton.value,
      child: Scaffold(
        body: Stack(children: [
          Positioned.fill(
              child: Image(
            image: AssetImage("assets/icons/bg.png"),
            fit: BoxFit.fill,
          )),
          Center(
            child: Column(children: [
              Expanded(
                  child: ListView(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: 380,
                    height: 200,
                    child: Image.asset(
                      "assets/icons/logo3.png",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Lets Get Started",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: autoBeresColors.yellowColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Ride with ease and convenience by \n using our vehicle service app!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF808080)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(35),
                    child: Column(children: [
                      Obx(
                        () => AnimatedSwitcher(
                          duration: const Duration(milliseconds: 1200),
                          child: controller.showSignUpButton.value
                              ? signUpButton()
                              : loginButton("email.png", "Sign With Email",
                                  controller.showButtonSignUp),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Or Use Instant Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                      loginButton("google2.png", "Sign With Google"),
                      loginButton("apple2.png", "Sign With Apple"),
                      RichText(
                        text: TextSpan(
                            text: "Already Have an Account? ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Sign In",
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      controller.navigateToSignInPage();
                                    },
                                  style: TextStyle(
                                      color: autoBeresColors.yellowColor,
                                      fontWeight: FontWeight.bold))
                            ]),
                      )
                    ]),
                  ),
                ],
              )),
            ]),
          ),
        ]),
      ),
    );
  }

  SizedBox loginButton(String textImgSrc, String txtButton,
      [VoidCallback? callback]) {
    return SizedBox(
      height: 70,
      child: Container(
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFFFFFF),
                elevation: 10,
                shadowColor: Colors.grey.withOpacity(0.3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
            onPressed: callback,
            child: Row(
              children: [
                Container(
                    width: 22,
                    height: 23,
                    child: Image.asset("assets/icons/$textImgSrc")),
                SizedBox(
                  width: 50,
                ),
                Text(
                  txtButton,
                  style: TextStyle(
                      color: Color(0xff808080),
                      fontSize: 18,
                      fontFamily: "Roboto"),
                ),
              ],
            )),
      ),
    );
  }
}

class signUpButton extends StatelessWidget {
  const signUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffFFDC61),
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: () {
          controller.navigateToRegisterPage();
        },
        child: Center(
            child: Text(
          "Sign Up",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
