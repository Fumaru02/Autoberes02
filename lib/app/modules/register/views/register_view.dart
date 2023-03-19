import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ot_apps/app/modules/register/views/register_view2.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image(
            image: AssetImage("assets/icons/bg.png"),
            fit: BoxFit.fill,
          )),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 126,
                ),
                Container(
                  width: 258,
                  height: 142,
                  child: Image.asset("assets/icons/complete1.png"),
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Container(
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
                      width: 294,
                      height: 148,
                      child: Stack(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 15,
                                width: 294,
                                color: Colors.white,
                                child: Text(
                                  "First name*",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Color(0xffFB5555)),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                width: 294,
                                height: 20,
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: "-",
                                      hintStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Container(
                                height: 15,
                                width: 294,
                                color: Colors.white,
                                child: Text(
                                  "Middle name*",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Color(0xffFB5555)),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                width: 294,
                                height: 20,
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: "-",
                                      hintStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Container(
                                height: 15,
                                width: 294,
                                color: Colors.white,
                                child: Text(
                                  "Last name*",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Color(0xffFB5555)),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                width: 294,
                                height: 20,
                                child: TextFormField(
                                  onFieldSubmitted: (value) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => RegisterView2(),
                                        ));
                                  },
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: "-",
                                      hintStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
