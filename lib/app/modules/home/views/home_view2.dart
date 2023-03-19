import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ot_apps/app/data/bigText.dart';
import 'package:ot_apps/app/modules/home/controllers/home_controller.dart';
import 'package:ot_apps/app/modules/home/views/home_view3.dart';

class HomeView2 extends GetView<HomeController> {
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
                text: " The Ultimate ",
                text2: "vehicle\n",
                text3: " care",
                text4: " solution\n",
              ),
              SizedBox(
                height: 46,
              ),
              Image.asset(width: 294, height: 253, "assets/icons/work3.png"),
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
                    Get.to(HomeView3(),
                        transition: Transition.rightToLeftWithFade,
                        duration: Duration(milliseconds: 500));
                  },
                  child: Center(
                      child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
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
