import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ot_apps/app/data/bigText.dart';
import 'package:ot_apps/app/modules/login/forgotpassword/successfullyreset.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
                text2: "New Password?",
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Create your new password to login",
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
                height: 102,
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15,
                          width: 294,
                          color: Colors.white,
                          child: Text(
                            "Password*",
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
                            obscureText: true,
                            textAlign: TextAlign.left,
                            textInputAction: TextInputAction.next,
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
                        Container(
                          height: 15,
                          width: 294,
                          color: Colors.white,
                          child: Text(
                            "Confirm Password*",
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
                            obscureText: true,
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
                          builder: (context) => SuccessFullyReset(),
                        ));
                  },
                  child: Center(
                      child: Text(
                    "Reset Password",
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
