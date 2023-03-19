import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ot_apps/app/data/bigText.dart';
import 'package:ot_apps/app/modules/login/forgotpassword/forgot_byphone/verificationbyphone.dart';

class ByPhone extends StatelessWidget {
  const ByPhone({super.key});

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
                "Type your phone number, we will send you a \nverification code via SMS",
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
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 2)),
                    ]),
                width: 294,
                height: 62,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        width: 59,
                        height: 32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(color: Color(0xffFB5555))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage("assets/icons/indonesia62.png")),
                            Container()
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 182,
                        height: 28,
                        child: TextFormField(
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(14)
                          ],
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: "Phone Number",
                              hintStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                      )
                    ],
                  ),
                ),
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
                          builder: (context) => VerificationByPhone(),
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
