import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ot_apps/app/data/bigText.dart';
import 'package:ot_apps/app/data/smallText.dart';
import 'package:ot_apps/app/modules/login/forgotpassword/forgot_byemail/byemail.dart';
import 'package:ot_apps/app/modules/login/forgotpassword/forgot_byphone/byphone.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
                child: Image.asset("assets/icons/complete6.png"),
              ),
              SizedBox(
                height: 50,
              ),
              BigTextSpan(
                text2: "Forgot Password?",
              ),
              SizedBox(
                height: 16,
              ),
              SmallText(text: "Which method do you want to use"),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ByEmail(),
                          ));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/email2.png",
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text("By email",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      color: Color(0xffFB5555),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold))),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: Offset(0, 2)),
                          ]),
                      width: 100,
                      height: 100,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ByPhone(),
                          ));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/sms.png"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("By phone/sms",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffFB5555),
                                      fontWeight: FontWeight.bold))),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: Offset(0, 2)),
                          ]),
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
