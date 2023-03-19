import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:ot_apps/app/modules/register/views/register_view5.dart';

import '../controllers/register_controller.dart';

class RegisterView4 extends GetView<RegisterController> {
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
                  child: Image.asset("assets/icons/complete4.png"),
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
                      height: 110,
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
                                  "Phone number*",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Color(0xffFB5555)),
                                ),
                              ),
                              Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 50,
                                  ),
                                  child: Container(
                                    color: Colors.white,
                                    width: 294,
                                    height: 20,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
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
                                ),
                                Container(
                                  child: Image.asset("assets/icons/indo62.png"),
                                  width: 42,
                                  height: 23,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border:
                                          Border.all(color: Color(0xffFB5555)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(3))),
                                )
                              ]),
                              Container(
                                height: 15,
                                width: 294,
                                color: Colors.white,
                                child: Text(
                                  "Verification Code",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Color(0xffFB5555)),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 21,
                                    height: 21,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        border: Border.all(
                                            color: Color(0xffFB5555))),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1)
                                      ],
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "-",
                                          hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    width: 21,
                                    height: 21,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        border: Border.all(
                                            color: Color(0xffFB5555))),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1)
                                      ],
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "-",
                                          hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    width: 21,
                                    height: 21,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        border: Border.all(
                                            color: Color(0xffFB5555))),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1)
                                      ],
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "-",
                                          hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    width: 21,
                                    height: 21,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        border: Border.all(
                                            color: Color(0xffFB5555))),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1)
                                      ],
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "-",
                                          hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    width: 21,
                                    height: 21,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        border: Border.all(
                                            color: Color(0xffFB5555))),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1)
                                      ],
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "-",
                                          hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    width: 21,
                                    height: 21,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        border: Border.all(
                                            color: Color(0xffFB5555))),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      onFieldSubmitted: (value) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RegisterView5(),
                                            ));
                                      },
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1)
                                      ],
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "-",
                                          hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 62,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 69,
                                      height: 21,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFB5555),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "Send Code",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
