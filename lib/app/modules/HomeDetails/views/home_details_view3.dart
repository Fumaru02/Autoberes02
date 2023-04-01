import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ot_apps/app/modules/HomeDetails/views/Emergency/emergency.dart';
import 'package:ot_apps/app/modules/HomeDetails/views/WorkShop/workshop.dart';
import 'package:ot_apps/app/modules/HomeDetails/views/mechanic/mechanic.dart';
import 'package:ot_apps/app/modules/HomeDetails/views/services/services2.dart';

import '../controllers/home_details_controller.dart';

class HomeDetailsView extends GetView<HomeDetailsController> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Color(0xffC23E3E),
                  )),
            ),
            SizedBox(
              width: 90,
            ),
            Text("AutoBeres",
                style: GoogleFonts.roboto(
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
          ],
        ),
        backgroundColor: Color(0xffC23E3E),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => SearchPage(), transition: Transition.cupertino);
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(
                child: Image(
              image: AssetImage("assets/icons/bg.png"),
              fit: BoxFit.cover,
            )),
            ListView(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Stack(children: [
                    Container(
                      height: mediaQueryHeight * 0.13,
                      width: mediaQueryWidth * 0.85,
                      decoration: BoxDecoration(
                          color: Color(0xffC23E3E),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 55, top: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 65),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image(
                                      image:
                                          AssetImage("assets/icons/money.png")),
                                  Text(
                                    "Abay",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 38, top: 4),
                                child: Text(
                                  "Rp 145.543.21",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  "Tap for history",
                                  style: TextStyle(
                                      fontSize: 6,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 20, left: 150),
                                decoration: BoxDecoration(
                                    color: Color(0xffFB5555),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                width: 93,
                                height: 21,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Image(
                                        image: AssetImage(
                                            "assets/icons/steer.png")),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text("Kendaraan",
                                        style: GoogleFonts.roboto(
                                            textStyle: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600)))
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: mediaQueryHeight * 0.13,
                      width: mediaQueryWidth * 0.5,
                      decoration: BoxDecoration(
                          color: Color(0xffFB5555),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              "Hai, Umar",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 26,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    width: 24,
                                    height: 24,
                                    child: Image(
                                        image: AssetImage(
                                            "assets/icons/kincir2.png")),
                                  ),
                                  Text("Explore",
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600)))
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    width: 24,
                                    height: 24,
                                    child: Image(
                                        image:
                                            AssetImage("assets/icons/add.png")),
                                  ),
                                  Text("Top Up",
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600)))
                                ],
                              ),
                              SizedBox(
                                width: 26,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    width: 24,
                                    height: 24,
                                    child: Image(
                                        image: AssetImage(
                                            "assets/icons/kincir2.png")),
                                  ),
                                  Text("Pay",
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600)))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () => Get.to(Emergency(),
                                  transition: Transition.zoom),
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Color(0xffC23E3E),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 3,
                                            blurRadius: 3,
                                            offset: Offset(0, 2))
                                      ]),
                                  child: Image.asset(
                                    "assets/icons/SOSICON3.png",
                                    scale: 8,
                                  )),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("SOS!",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () => Get.to(Services2(),
                                  transition: Transition.zoom),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 3,
                                          blurRadius: 3,
                                          offset: Offset(0, 2))
                                    ]),
                                child: Image(
                                    image: AssetImage(
                                        "assets/icons/services.png")),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Services",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () => Get.to(workshop(),
                                  transition: Transition.zoom),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 3,
                                          blurRadius: 3,
                                          offset: Offset(0, 2))
                                    ]),
                                child: Image(
                                    image: AssetImage(
                                        "assets/icons/workshop.png")),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Workshop",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () => Get.to(Mechanic(),
                                  transition: Transition.zoom),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 3,
                                          blurRadius: 3,
                                          offset: Offset(0, 2))
                                    ]),
                                child: Image(
                                    image: AssetImage(
                                        "assets/icons/mechanic.png")),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Mechanic",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 22,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xffFFFFFF),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 3,
                                        blurRadius: 3,
                                        offset: Offset(0, 2))
                                  ]),
                              child: Image(
                                  image: AssetImage("assets/icons/module.png")),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Module",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                        SizedBox(
                          width: 34,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xffFFFFFF),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 3,
                                        blurRadius: 3,
                                        offset: Offset(0, 2))
                                  ]),
                              child: Image(
                                  image: AssetImage("assets/icons/shop.png")),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Spareparts",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                        SizedBox(
                          width: 36,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xffFFFFFF),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 3,
                                        blurRadius: 3,
                                        offset: Offset(0, 2))
                                  ]),
                              child: Image(
                                  image:
                                      AssetImage("assets/icons/reminder.png")),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Reminder",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xffFFFFFF),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 3,
                                        blurRadius: 3,
                                        offset: Offset(0, 2))
                                  ]),
                              child: Image(
                                  image: AssetImage("assets/icons/others.png")),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Others",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                  child: Container(
                width: 324,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xffFB5555),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(image: AssetImage("assets/icons/accountstar.png")),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("106 Exp to your next level",
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600))),
                        SizedBox(
                          height: 8,
                        ),
                        Stack(
                          children: [
                            Image(image: AssetImage("assets/icons/slider.png")),
                            Image(
                                image:
                                    AssetImage("assets/icons/whiteslider.png"))
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 36,
                      color: Colors.white,
                    )
                  ],
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 22, left: 36),
                child: Text("Pintasan",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 143,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xffFB5555),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/icons/garasi.png")),
                          SizedBox(
                            height: 2,
                          ),
                          Text("Workshop Terdekat",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 36,
                    ),
                    Container(
                      width: 143,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xffFB5555),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(
                                  "assets/icons/mechanicterdekat.png")),
                          SizedBox(
                            height: 2,
                          ),
                          Text("Mechanic Terdekat",
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Text("Promo workshop kesukaan",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Text(
                    "Dapatkan paket hemat dan harga  terjangkau di \nworkshop tertentu sebelum kehabisan Promo!"),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Container(
                  child: Image(
                      image: AssetImage(
                    "assets/icons/promo1.png",
                  )),
                ),
              )),
            ]),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, size.height) // Add line p1p2
      ..lineTo(size.width, size.height)
      ..lineTo(100, 0) // Add line p2p3
      ..lineTo(80, 0) // Add line p2p3
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffC23E3E),
          // The search area here
          title: Container(
            margin: EdgeInsets.only(right: 50),
            width: Get.width,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          )),
      body: Stack(
        children: [
          Positioned.fill(
              child: Image(
            image: AssetImage("assets/icons/bg.png"),
            fit: BoxFit.cover,
          )),
        ],
      ),
    );
  }
}
