import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ot_apps/app/modules/HomeDetails/views/autoberes_color.dart';
import 'package:ot_apps/auth_controller.dart';
import '../controllers/login_controller.dart';

class LoginView2 extends GetView<LoginController> {
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
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Center(
                      child: Column(children: [
                    SizedBox(
                      height: 126,
                    ),
                    Image.asset(
                      "assets/icons/logo3.png",
                      scale: 4,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Hello Again!",
                      style: TextStyle(
                        color: autoBeresColors.yellowColor,
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
                      style: TextStyle(color: autoBeresColors.secondColor),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    //Email TextField
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
                    //Password TextField
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
                    //Signin Button
                    signInButton(
                        emailController: emailController,
                        passwordController: passwordController),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Or?",
                      style: TextStyle(
                          color: autoBeresColors.secondColor,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                    //Sign With Google
                    loginButton("google2.png", "Sign With Google"),
                    //Sign with Apple
                    loginButton("apple2.png", "Sign With Apple"),
                  ])),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

class signInButton extends StatelessWidget {
  const signInButton({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 303,
      height: 49,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: autoBeresColors.yellowColor,
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: () {
          AuthController.instance.login(
              emailController.text.trim(), passwordController.text.trim());
        },
        child: Center(
            child: Text(
          "Sign In",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

SizedBox loginButton(String textImgSrc, String txtButton,
    [VoidCallback? signInWithGoogle]) {
  return SizedBox(
    height: 70,
    width: 310,
    child: Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffFFFFFF),
              elevation: 10,
              shadowColor: Colors.grey.withOpacity(0.3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)))),
          onPressed: signInWithGoogle,
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
