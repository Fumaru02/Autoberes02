import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ot_apps/app/data/bigText.dart';
import 'package:ot_apps/app/modules/home/controllers/home_controller.dart';
import 'package:ot_apps/app/modules/login/views/login_view.dart';

class HomeView3 extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
            child: Image(
          image: AssetImage("assets/icons/bg.png"),
          fit: BoxFit.fill,
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                      width: 76, height: 42, "assets/icons/small-logo1.png")),
              SizedBox(
                height: 50,
              ),
              BigTextSpan(
                text: "Drive ",
                color: Color(0xffFB5555),
                text2: "worry-free\n",
                text3: "with ",
                text4: "our app",
              ),
              SizedBox(
                height: 46,
              ),
              Image.asset(width: 294, height: 253, "assets/icons/work4.png"),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 212,
                height: 57,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFB6666),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    Get.off(LoginView(),
                        transition: Transition.fade,
                        duration: Duration(milliseconds: 500));
                  },
                  child: Center(
                      child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Privacy policy",
                style: TextStyle(
                    color: Color(0xff808080),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
