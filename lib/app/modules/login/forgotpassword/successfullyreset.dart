import 'package:flutter/material.dart';

class SuccessFullyReset extends StatelessWidget {
  const SuccessFullyReset({super.key});

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
                  child: Image.asset("assets/icons/complete6.png"),
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
                      height: 219,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Password Changed",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffFB5555),
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Congratulations, your password \n is already changed",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffF808080),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 26,
                            ),
                            SizedBox(
                              width: 266,
                              height: 49,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffFB6666),
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                onPressed: () {},
                                child: Center(
                                    child: Text(
                                  "Back to login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
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
