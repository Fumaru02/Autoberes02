import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ot_apps/app/data/bigText.dart';
import 'package:ot_apps/app/modules/login/forgotpassword/forgot_byemail/verificationbyemail.dart';

class ByEmail extends StatelessWidget {
  const ByEmail({super.key});

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
              Text(
                "Type your email, we will send you a \nverification code via email",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Color(0xff808080),
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 36,
              ),
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
                height: 62,
                child: Stack(children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15,
                          width: 294,
                          color: Colors.white,
                          child: Text(
                            "Email*",
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
                            onFieldSubmitted: (value) {},
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: "-",
                                hintStyle: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 266,
                height: 49,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFB6666),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerificationByEmail(),
                        ));
                  },
                  child: Center(
                      child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
