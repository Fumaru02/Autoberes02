import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ot_apps/app/modules/HomeDetails/views/home_details_view.dart';
import 'package:ot_apps/app/modules/login/forgotpassword/forgotpassword.dart';
import 'package:ot_apps/auth_controller.dart';

import '../controllers/login_controller.dart';

class LoginView3 extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Positioned.fill(
            child: Image(
          image: AssetImage("assets/icons/bg.png"),
          fit: BoxFit.fill,
        )),
        Form(
          key: _formKey,
          child: Center(
              child: Column(children: [
            SizedBox(
              height: 126,
            ),
            Image.asset(
              "assets/icons/logo3.png",
              height: 43,
              width: 78,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hello Again!",
              style: TextStyle(
                color: Color(0xFF292929),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Welcome Back You’ve been\n missed",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF808080)),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 50,
            ),
            Stack(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xffF2F2F2),
                ),
                width: 303,
                height: 49,
                child: Padding(
                  padding: const EdgeInsets.only(left: 46, top: 3),
                  child: TextFormField(
                    controller: emailController,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          fontSize: 16,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset(
                  "assets/icons/email.png",
                  height: 20,
                  width: 20,
                ),
              ),
            ]),
            SizedBox(
              height: 5,
            ),
            Stack(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xffF2F2F2),
                ),
                width: 303,
                height: 49,
                child: Padding(
                  padding: const EdgeInsets.only(left: 46, top: 3),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 16,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset(
                  "assets/icons/password.png",
                  height: 22,
                  width: 18,
                ),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 303,
              height: 49,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFB6666),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  AuthController.instance.login(emailController.text.trim(),
                      passwordController.text.trim());
                },
                child: Center(
                    child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Or?",
              style: TextStyle(
                  color: Color(0xff808080),
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeDetailsView(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 2))
                    ]),
                width: 303,
                height: 49,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        width: 22,
                        height: 23,
                        child: Image.asset("assets/icons/google2.png")),
                    Text(
                      "             Sign With Google",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Color(0xff808080),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 3,
                          spreadRadius: 3,
                          offset: Offset(0, 2))
                    ]),
                width: 303,
                height: 49,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        width: 22,
                        height: 23,
                        child: Image.asset("assets/icons/apple2.png")),
                    Text(
                      "              Sign With Apple",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Color(0xff808080),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            RichText(
              text: TextSpan(
                  text: "Already Have an Account? ",
                  style: TextStyle(
                    color: Color(0xFF808080),
                    fontSize: 10,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Sign In",
                        style: TextStyle(
                            color: Color(0xffFB5555),
                            fontWeight: FontWeight.bold))
                  ]),
            ),
          ])),
        ),
      ]),
    );
  }
}
